//
//  DependencyContainer.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import Foundation

protocol DependencyContaining {
    
    var network: Networking { get }
    var networkManager: NetworkManaging { get }
    var reachabilityService: ReachabilityServicing { get }
    var assetsNetworkService: AssetsServicing { get }
}

class DependencyContainer: DependencyContaining {
    
    let network: Networking = Network()
    
    var networkManager: NetworkManaging {
        return NetworkManager(network: network)
    }
    
    var reachabilityService: ReachabilityServicing {
        return ReachabilityService()
    }
    
    var assetsNetworkService: AssetsServicing {
        return AssetsService(networkManager: networkManager)
    }
}
