//
//  AssetsServiceMock.swift
//  HomeAssignment-applicasterTests
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import RxSwift

@testable import HomeAssignment_applicaster

class AssetsServiceMock: AssetsServicing {
    
    let getLinks = PublishSubject<Void>()
    let getVideos =  PublishSubject<Void>()
    
    let setVideos = PublishSubject<[MediaAsset]>()
    let videos: Observable<[MediaAsset]>
    
    let setLinks = PublishSubject<[MediaAsset]>()
    let links: Observable<[MediaAsset]>
    
    init() {
        videos = setVideos.asObservable()
        links = setLinks.asObservable()
    }
}
