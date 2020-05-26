//
//  AssetWebViewModel.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import RxSwift
import RxCocoa

protocol AssetWebViewModeling {
    
    // MARK: Input
    var setLoading: PublishSubject<Bool> { get }
    
    // MARK: Output
    var videoUrl: Driver<URL> { get }
    var isLoading: Driver<Bool> { get }
}

class AssetWebViewModel: AssetWebViewModeling {
    
    // MARK: Input
    let setLoading = PublishSubject<Bool>()
    
    // MARK: Output
    let videoUrl: Driver<URL>
    let isLoading: Driver<Bool>
    
    init?(urlString: String) {
        
        guard let url = URL(string: urlString) else { return nil}
        videoUrl = .just(url)
        
        isLoading = setLoading
            .asDriver()
    }
}
