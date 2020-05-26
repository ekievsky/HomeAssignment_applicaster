//
//  AppDelegate.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import UIKit
import RxSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    private let dependencyContainer: DependencyContaining = DependencyContainer()
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        setupSceneFactory()
        setupRootViewController()
        return true
    }
    
    private func setupRootViewController() {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let rootViewController = SceneFactory.shared.assetsList()
        let rootNavigationController = UINavigationController(rootViewController: rootViewController)
        window?.rootViewController = rootNavigationController
        window?.makeKeyAndVisible()
    }
    
    private func setupSceneFactory() {
        
        SceneFactory.shared.set(dependencyContainer: dependencyContainer)
    }
}
