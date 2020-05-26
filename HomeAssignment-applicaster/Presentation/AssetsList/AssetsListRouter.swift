//
//  AssetsListRouter.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class AssetsListRouter: Routing {
    
    weak var viewController: UIViewController?
    
    init(viewController: UIViewController) {
        
        self.viewController = viewController
    }
    
    func route(to routeId: RouteIds, isModal: Bool) {
        
        let destination: UIViewController?
        switch routeId {
        case .assetVideoPlayer(let urlString):
            destination = SceneFactory.shared.assetDetail(urlString: urlString)
        case .assetWebView(let urlString):
            destination = SceneFactory.shared.assetWebView(urlString: urlString)
        }
        
        guard let destinationViewController = destination else {
            showAlert(title: Strings.Common.error, message: Strings.Common.wrongUrlStringFormat)
            return
        }
        
        isModal
            ? viewController?.present(destinationViewController, animated: true)
            : viewController?.navigationController?.pushViewController(destinationViewController, animated: true)
    }
}


