//
//  Networking.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import Alamofire
import RxSwift
import RxCocoa

protocol Networking {
    func request(route: NetworkAPIRoutable) -> Observable<Data>
}

class Network: Networking {
    
    static let shared = Network()
    
    private let queue = DispatchQueue(label: "com.HomeAssignment-applicaster.network")
    
    private let session = Alamofire.Session.default

    func request(route: NetworkAPIRoutable) -> Observable<Data> {
        Logger.logRequest(route: route)
        return Observable.create { [weak self] observer in
            guard let strongSelf = self, let url = route.url else { return Disposables.create { } }


            let request = strongSelf.session.request(
                url,
                method: route.method,
                parameters: route.parameters,
                encoding: route.encoding
            )
                .validate()
                .responseData(queue: strongSelf.queue) { [weak self] response in
                    Logger.logResponse(response, route: route)
                    guard let strongSelf = self else { return }
                    strongSelf.handleNetworkResponse(response, forObserver: observer)
            }

            return Disposables.create {
                request.cancel()
            }
        }
    }
    
    //MARK: Private
    private func handleNetworkResponse(_ response: AFDataResponse<Data>, forObserver observer: AnyObserver<Data>) {
        switch response.result {
        case let .success(value):
            observer.onNext(value)
            observer.onCompleted()
        case let .failure(error):
            observer.onError(error)
        }
    }
}
