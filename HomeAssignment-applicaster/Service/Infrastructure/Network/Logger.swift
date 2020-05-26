//
//  Logger.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import Alamofire

class Logger {

    static func logRequest(route: NetworkAPIRoutable) {
        if !BuildConfig.isDebug { return }
        var stringToLog = "REQUEST: "

        stringToLog.append("\(route.method.rawValue) ")
        stringToLog.append("\(route.url?.asString ?? "") \n")
        stringToLog.append("Parameters: \(String(describing: route.parameters)) \n")
        print("_______________________________________________________________________")
        print(stringToLog)
        print("_______________________________________________________________________")
    }

    static func logResponse(_ response: AFDataResponse<Data>, route: NetworkAPIRoutable) {
        if !BuildConfig.isDebug { return }
        var stringToLog = "RESPONSE: "
        stringToLog.append("\(route.method.rawValue) ")
        stringToLog.append("\(response.request?.urlRequest?.url?.asString ?? "") \n")
        stringToLog.append("Headers: \(representHeaders(headers: response.response?.allHeaderFields)) \n")
        stringToLog.append("STATUS CODE: \(response.response?.statusCode ?? 0) \n")

        print("_______________________________________________________________________")
        print(stringToLog)
        print("_______________________________________________________________________")
    }
}

private extension URL {
    var asString: String {
        return "\(self)"
    }
}

private extension Logger {
    static func representHeaders(headers: [AnyHashable : Any]?) -> String {
        let strs = headers?.map { (k,v) in
            return "[\(k as? String ?? ""): \(v)]"
        } ?? []
        return strs.joined(separator: ", ")
    }
}
