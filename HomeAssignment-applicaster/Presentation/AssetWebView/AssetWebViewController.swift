//
//  AssetWebViewController.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//
import UIKit
import WebKit
import RxSwift

class AssetWebViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet private var webView: WKWebView!
    @IBOutlet private var activityIndicator: UIActivityIndicatorView!
    
    //MARK: - Compoents
    var viewModel: AssetWebViewModeling!
    
    //MARK: - Private
    private let disposeBag = DisposeBag()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        
        super.viewDidLoad()
        title = Strings.AssetWebView.title
        bind()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        activityIndicator.center = view.center
    }
    
    //MARK: - Binding
    private func bind() {
        //MARK: - Input
        webView.rx.didStartLoad
            .map { _ in true }
            .bind(to: viewModel.setLoading)
            .disposed(by: disposeBag)
        
        webView.rx.didFinishLoad
            .map { _ in false }
            .bind(to: viewModel.setLoading)
            .disposed(by: disposeBag)
        
        
        //MARK: - Output
        viewModel.videoUrl
            .drive(onNext: { [weak self] url in
                self?.webView.load(URLRequest(url: url))
            })
            .disposed(by: disposeBag)
        
        viewModel.isLoading
            .drive(activityIndicator.rx.isAnimating)
            .disposed(by: disposeBag)
    }
}
