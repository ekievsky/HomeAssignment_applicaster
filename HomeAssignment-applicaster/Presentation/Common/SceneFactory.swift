//
//  SceneFactory.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import UIKit

enum Storyboard: String {
    case main = "Main"
}

class SceneFactory {
    
    static let shared = SceneFactory()
    
    private var dependencyContainer: DependencyContaining!
    
    func set(dependencyContainer: DependencyContaining) {
        
        self.dependencyContainer = dependencyContainer
    }
    
    func assetsList() -> AssetsListViewController {
        
        let viewController: AssetsListViewController = viewControllerFromStoryboard(storyboard: .main)
        let viewModel = AssetsListViewModel(assetsNetworkService: dependencyContainer.assetsNetworkService)
        let router = AssetsListRouter(viewController: viewController)
        
        viewController.viewModel = viewModel
        viewController.router = router
        
        return viewController
    }
    
    func assetDetail(urlString: String) -> AssetVideoPlayerViewController? {
        
        let viewController = AssetVideoPlayerViewController()
        guard let viewModel = AssetVideoPlayerViewModel(urlString: urlString,
                                                        reachabilityService: dependencyContainer.reachabilityService)
            else { return nil }
        
        viewController.viewModel = viewModel
        
        return viewController
    }
    
    func assetWebView(urlString: String) -> AssetWebViewController? {
        
        let viewController: AssetWebViewController = viewControllerFromStoryboard(storyboard: .main)
        guard let viewModel = AssetWebViewModel(urlString: urlString) else { return nil }
        
        viewController.viewModel = viewModel
        
        return viewController
    }
}

extension SceneFactory {
    
    private func viewControllerFromStoryboard<T: UIViewController>(storyboard: Storyboard) -> T {
        
        return UIStoryboard(name: storyboard.rawValue, bundle: Bundle.main)
            .instantiateViewController(identifier: "\(T.self)") as! T
    }
}
