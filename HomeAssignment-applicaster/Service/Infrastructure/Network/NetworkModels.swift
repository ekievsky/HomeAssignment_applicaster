//
//  NetworkModels.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import Foundation

enum NetworkDecoder {
    static var instance: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
            
//            .custom({ (decoder) -> Date in
//            let container = try decoder.singleValueContainer()
//            let dateStr = try container.decode(String.self)
//
//            let formatter = DateFormatter()
//            formatter.calendar = Calendar(identifier: .iso8601)
//            formatter.locale = Locale(identifier: "en_US_POSIX")
//            if let date = formatter.date(from: dateStr) {
//                return date
//            }
//            throw DateError.invalidDate
//        })
        return decoder
    }
}
