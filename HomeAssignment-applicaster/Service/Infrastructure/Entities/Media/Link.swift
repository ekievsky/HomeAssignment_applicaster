//
//  Link.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import Foundation

struct Link: MediaAsset {
    
    struct Data: Codable {
        let href: String
    }
    
    let id: String
    let title: String
    let summary: String
    let imageUrlString: String?
    
    let type: MediaAssetType
    let mediaGroup: [MediaGroup]
    
    let data: Data
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decode(String.self, forKey: .id)
        title = try container.decode(String.self, forKey: .title)
        summary = try container.decode(String.self, forKey: .summary)
        type = try container.decode(MediaAssetType.self, forKey: .type)
        mediaGroup = try container.decode([MediaGroup].self, forKey: .mediaGroup)
        data = try container.decode(Data.self, forKey: .data)
        imageUrlString = mediaGroup
            .first(where: { $0.type == .image })
            .map { $0.mediaItem }?
            .first(where: { $0.key == "image_base" })?
            .src
    }
    
    enum CodingKeys: String, CodingKey {
        case id, title, summary, type, mediaGroup
        case data = "link"
    }
}
