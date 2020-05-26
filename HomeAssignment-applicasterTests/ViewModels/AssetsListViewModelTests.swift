//
//  AssetsListViewModelTests.swift
//  HomeAssignment-applicasterTests
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import XCTest
import RxSwift
import RxCocoa

@testable import HomeAssignment_applicaster

class AssetsListViewModelTests: XCTestCase {
    
    var viewModel: AssetsListViewModel!
    var assetsServiceMock: AssetsServiceMock!
    var disposeBag: DisposeBag!

    override func setUp() {
        
        assetsServiceMock = AssetsServiceMock()
        
        viewModel = AssetsListViewModel(assetsNetworkService: assetsServiceMock)
        
        disposeBag = DisposeBag()
    }

    override func tearDown() {
        viewModel = nil
        assetsServiceMock = nil
        disposeBag = nil
        super.tearDown()
    }
    
    func testGetVideosOnViewDidLoad() {
        
        let expectedResult = true
        var actualResult = false
        
        assetsServiceMock.getVideos
            .subscribe(onNext: { _ in
                actualResult = true
            })
            .disposed(by: disposeBag)
        
        viewModel.viewDidLoad.onNext(())
        
        XCTAssertEqual(expectedResult, actualResult, "ViewModel should getVideos all on viewDidLoad")
    }
    
    func testGetLinksOnViewDidLoad() {
        
        let expectedResult = true
        var actualResult = false
        
        assetsServiceMock.getLinks
            .subscribe(onNext: { _ in
                actualResult = true
            })
            .disposed(by: disposeBag)
        
        viewModel.viewDidLoad.onNext(())
        
        XCTAssertEqual(expectedResult, actualResult, "ViewModel should getLinks all on viewDidLoad")
    }

    func testItemsMapping() {
         
        let expectedResult = (AssetsModelsParser.links ?? []).count + (AssetsModelsParser.videos ?? []).count
        var actualResult = 0
        
        viewModel.items
            .drive(onNext: { items in
                actualResult = items.count
            })
            .disposed(by: disposeBag)
        
        viewModel.viewDidLoad.onNext(())
        assetsServiceMock.setVideos.onNext(AssetsModelsParser.videos ?? [])
        assetsServiceMock.setLinks.onNext(AssetsModelsParser.links ?? [])
        
        XCTAssertEqual(expectedResult, actualResult, "ViewModel should map all the assets into items")
    }
    
    func testIsLoading() {
        
        var actualResult = false
        
        viewModel.isLoading
            .drive(onNext: { _isLoading in
                actualResult = _isLoading
            })
            .disposed(by: disposeBag)
        
        viewModel.viewDidLoad.onNext(())
        
        XCTAssertTrue(actualResult, "ViewModel should start loading on viewDidLoad")
        
        assetsServiceMock.setVideos.onNext(AssetsModelsParser.videos ?? [])
        assetsServiceMock.setLinks.onNext(AssetsModelsParser.links ?? [])
        
        XCTAssertFalse(actualResult, "ViewModel should stop loading on data received")
    }
    
    
    func testSearchText() {
        
        let searchedText = "one"
        
        let initialAssetItems = (AssetsModelsParser.videos ?? []) + (AssetsModelsParser.links ?? [])
        var assetItems: [AssetListItem] = []
        
        viewModel.items
            .drive(onNext: { _items in
                assetItems = _items
            })
            .disposed(by: disposeBag)
        
        viewModel.viewDidLoad.onNext(())
        
        assetsServiceMock.setVideos.onNext(AssetsModelsParser.videos ?? [])
        assetsServiceMock.setLinks.onNext(AssetsModelsParser.links ?? [])
        
        viewModel.searchBarTextChanged.onNext(searchedText)
        
        let searchResult = assetItems
            .map { $0.title }
            .map { $0.contains(searchedText) }
            .reduce(true) { $0 && $1 }
        
        XCTAssertTrue(searchResult, "ViewModel should filter array with text from search bar")
        
        viewModel.searchBarTextChanged.onNext("")
        
        XCTAssertEqual(assetItems.count, initialAssetItems.count, "ViewModel should restore array of text from search bar is empty")
    }
    
    func testLinkRouting() {

        let expectedResult = true
        var actualResult = false

        viewModel.routeToWebView
            .drive(onNext: { _ in
                actualResult = true
            })
            .disposed(by: disposeBag)
        
        viewModel.viewDidLoad.onNext(())
        
        assetsServiceMock.setVideos.onNext([])
        assetsServiceMock.setLinks.onNext([AssetsModelsParser.link!])
        
        viewModel.didSelectRow.onNext(IndexPath(row: 0, section: 0))

        XCTAssertEqual(expectedResult, actualResult, "ViewModel should route to WebView if Link MediaAsset was clicked")
    }

    func testVideoRouting() {

        let expectedResult = true
        var actualResult = false

        viewModel.routeToAssetVideoPlayer
            .drive(onNext: { _ in
                actualResult = true
            })
            .disposed(by: disposeBag)
        
        viewModel.viewDidLoad.onNext(())
        
        assetsServiceMock.setVideos.onNext([AssetsModelsParser.video!])
        assetsServiceMock.setLinks.onNext([])
        
        viewModel.didSelectRow.onNext(IndexPath(row: 0, section: 0))

        XCTAssertEqual(expectedResult, actualResult, "ViewModel should route to AssetVideoPlayer if Video MediaAsset was clicked")
    }

}
