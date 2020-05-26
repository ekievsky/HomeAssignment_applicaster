//
//  APIRoute.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import Alamofire

protocol NetworkAPIRoutable {

    var method: HTTPMethod { get }
    var path: String { get }
    var parameters: [String: Any] { get }
    var encoding: ParameterEncoding { get }
}

extension NetworkAPIRoutable {
    
    var baseUrlString: String {
        return "http://assets-production.applicaster.com/"
    }

    var url: URL? {
        return URL(string: "\(baseUrlString)\(path)")
    }
}
