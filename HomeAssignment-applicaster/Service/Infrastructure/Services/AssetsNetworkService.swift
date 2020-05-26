//
//  AssetsService.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import RxSwift

protocol AssetsServicing {
    
    //MARK: - Input
    var getVideos: PublishSubject<Void> { get }
    var getLinks: PublishSubject<Void> { get }
    
    //MARK: - Output
    var videos: Observable<[MediaAsset]> { get }
    var links: Observable<[MediaAsset]> { get }
}

class AssetsService: BaseService, AssetsServicing {
    
    //MARK: - Input
    let getVideos = PublishSubject<Void>()
    let getLinks = PublishSubject<Void>()
    
    //MARK: - Output
    let videos: Observable<[MediaAsset]>
    let links: Observable<[MediaAsset]>
    
    override init(networkManager: NetworkManaging) {
        videos = getVideos
            .flatMapLatest { _ -> Observable<NetworkDataEntry<Video>> in
                return networkManager.request(route: AssetsAPIRoute.video)
            }
            .map { $0.entry }
            .share(replay: 1)
        
        links = getLinks
            .flatMapLatest { _ -> Observable<NetworkDataEntry<Link>> in
                return networkManager.request(route: AssetsAPIRoute.link)
            }
            .map { $0.entry }
            .share(replay: 1)

        super.init(networkManager: networkManager)
    }
}
