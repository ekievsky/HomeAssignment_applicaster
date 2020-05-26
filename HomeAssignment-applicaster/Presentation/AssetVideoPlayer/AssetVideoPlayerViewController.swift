//
//  AssetVideoPlayerViewController.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import UIKit
import AVKit
import RxSwift
import RxCocoa

class AssetVideoPlayerViewController: AVPlayerViewController {
    
    //MARK: - Components
    var viewModel: AssetVideoPlayerViewModeling!
    
    //MARK: - Private
    private let disposeBag = DisposeBag()

    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewModel.viewWillAppear.onNext(animated)
    }
    
    //MARK: - Binding
    private func bind() {
        
        viewModel.player
            .drive(onNext: { [weak self] _player in
                self?.player = _player
            })
            .disposed(by: disposeBag)
    }
}
