//
//  NetworkManager.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import Alamofire
import RxSwift

protocol NetworkManaging: class {

    func request<T: Decodable>(route: NetworkAPIRoutable) -> Observable<T>
}

class NetworkManager: NetworkManaging {
    
    private let network: Networking
    
    init(network: Networking) {
        self.network = network
    }
    
    func request<T: Decodable>(route: NetworkAPIRoutable) -> Observable<T> {
        return network.request(route: route)
            .map { data -> T in
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let response = try decoder.decode(T.self, from: data)
                return response
        }
    }
}
