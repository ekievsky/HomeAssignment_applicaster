//
//  Router.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import UIKit

enum RouteIds {
    case assetVideoPlayer(urlString: String)
    case assetWebView(urlString: String)
}

protocol Routing: class {
    
    var viewController: UIViewController? { get }
    
    func route(to routeId: RouteIds, isModal: Bool)
}

extension Routing {
    
    func showAlert(title: String, message: String, action: (() -> ())? = nil) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            action?()
        }
        alert.addAction(okAction)
        viewController?.present(alert, animated: true)
    }
}
