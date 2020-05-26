//
//  ReachabilityService.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import Alamofire
import RxSwift

typealias ReachabilityStatus = NetworkReachabilityManager.NetworkReachabilityStatus

protocol ReachabilityServicing {

    var status: ReachabilityStatus { get }
    var isOnline: Bool { get }
    var statusChanged: PublishSubject<ReachabilityStatus> { get }

    func startMonitoring()
    func stopMonitoring()
}

final class ReachabilityService: ReachabilityServicing {

    private let reachabilityManager = NetworkReachabilityManager(host: Constants.host)

    var isOnline: Bool {
        return reachabilityManager?.isReachable ?? false
    }

    var status: ReachabilityStatus = .unknown

    let statusChanged = PublishSubject<ReachabilityStatus>()

    func startMonitoring()  {
        reachabilityManager?.startListening(onUpdatePerforming: { [weak self]  (status) in
            guard let strongSelf = self else { return }
            strongSelf.status = status
            strongSelf.statusChanged.onNext(status)
        })
    }

    func stopMonitoring() {
        reachabilityManager?.stopListening()
    }
}

private extension ReachabilityService {
    enum Constants {
        static let host = "www.google.com"
    }
}



