//
//  AssetsListViewModel.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import RxSwift
import RxCocoa

protocol AssetsListViewModeling: class {
    
    // MARK: Input
    var viewDidLoad: PublishSubject<Void> { get }
    var didSelectRow: PublishSubject<IndexPath> { get }
    var searchBarTextChanged: PublishSubject<String?> { get }
    
    // MARK: Output
    var isLoading: Driver<Bool> { get }
    var items: Driver<[AssetListItem]> { get }
    var routeToWebView: Driver<String> { get }
    var routeToAssetVideoPlayer: Driver<String> { get }
}

class AssetsListViewModel: AssetsListViewModeling {
    
    // MARK: Input
    let viewDidLoad = PublishSubject<Void>()
    let didSelectRow = PublishSubject<IndexPath>()
    let searchBarTextChanged = PublishSubject<String?>()
    
    // MARK: Output
    let isLoading: Driver<Bool>
    let items: Driver<[AssetListItem]>
    let routeToWebView: Driver<String>
    let routeToAssetVideoPlayer: Driver<String>
    
    private let disposeBag = DisposeBag()
    
    init(assetsNetworkService: AssetsServicing) {
        
        viewDidLoad
            .bind(to: assetsNetworkService.getLinks, assetsNetworkService.getVideos)
            .disposed(by: disposeBag)
        
        let initialAssets = Observable.combineLatest(assetsNetworkService.links,
                                                     assetsNetworkService.videos)
            .map { $0 + $1 }
            .share(replay: 1)
        
        let searchedAssets = searchBarTextChanged
            .filterNil()
            .withLatestFrom(initialAssets) { (text: $0, assets: $1) }
            .map { filterOptions -> [MediaAsset] in
                return filterOptions.text.isEmpty
                    ? filterOptions.assets
                    : filterOptions.assets.filter { $0.title.contains(filterOptions.text) }
            }
        
        let assets = Observable.merge(initialAssets, searchedAssets)
            .share(replay: 1)
        
        items = assets
            .map { $0.map { AssetListItem(from: $0) } }
            .asDriver()
        
        isLoading = Observable.merge(initialAssets.map {_ in false })
            .startWith(true)
            .asDriver()
        
        routeToWebView = didSelectRow.withLatestFrom(assets) { ($0, $1) }
            .map { indexPath, items in return items[indexPath.row] }
            .map { $0 as? Link }.filterNil()
            .map { $0.data.href }
            .asDriver()
        
        routeToAssetVideoPlayer = didSelectRow.withLatestFrom(assets) { ($0, $1) }
            .map { indexPath, items in return items[indexPath.row] }
            .map { $0 as? Video }.filterNil()
            .map { $0.content.src }
            .asDriver()
            
    }
}
