//
//  AssetDetailViewModel.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import AVFoundation
import RxSwift
import RxCocoa

protocol AssetVideoPlayerViewModeling {
    
    //MARK: Input
    var viewWillAppear: PublishSubject<Bool> { get }
    
    //MARK: Output
    var player: Driver<AVPlayer> { get }
}

class AssetVideoPlayerViewModel: AssetVideoPlayerViewModeling {
    
    //MARK: Input
    let viewWillAppear = PublishSubject<Bool>()
    
    //MARK: Output
    let player: Driver<AVPlayer>
    
    private let disposeBag = DisposeBag()
    
    init?(urlString: String,
          reachabilityService: ReachabilityServicing) {
        
        guard let url = URL(string: urlString) else { return nil }
        let _player = AVPlayer(url: url)
        
        player = .just(_player)
        
        viewWillAppear
            .subscribe(onNext: { _ in
                _player.play()
            })
            .disposed(by: disposeBag)
        
        reachabilityService.statusChanged
            .filter { $0 == .reachable(.ethernetOrWiFi) || $0 == .reachable(.cellular) }
            .subscribe(onNext: { _ in
                _player.play()
            })
            .disposed(by: disposeBag)
    }
}
