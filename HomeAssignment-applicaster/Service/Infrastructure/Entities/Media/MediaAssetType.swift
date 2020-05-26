//
//  MediaAssetType.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import Foundation

enum MediaAssetType: String {
    
    case video
    case link
    
    case unknown
}

extension MediaAssetType: Codable {
    
    public init(from decoder: Decoder) throws {
        
        let value = try decoder.container(keyedBy: CodingKeys.self).decode(String.self, forKey: .value)
        self = MediaAssetType(rawValue: value) ?? .unknown
    }
    
    enum CodingKeys: String, CodingKey {
        case value
    }
}
