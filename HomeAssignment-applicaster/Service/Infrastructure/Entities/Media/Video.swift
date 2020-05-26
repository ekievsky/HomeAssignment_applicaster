//
//  Video.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import Foundation

struct Video: MediaAsset {
    
    struct Content: Codable {
        let src: String
    }
    
    let id: String
    let title: String
    let summary: String
    let imageUrlString: String?
    let content: Content

    let type: MediaAssetType
    let mediaGroup: [MediaGroup]
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decode(String.self, forKey: .id)
        title = try container.decode(String.self, forKey: .title)
        summary = try container.decode(String.self, forKey: .summary)
        content = try container.decode(Content.self, forKey: .content)
        type = try container.decode(MediaAssetType.self, forKey: .type)
        mediaGroup = try container.decode([MediaGroup].self, forKey: .mediaGroup)
        imageUrlString = mediaGroup
            .first(where: { $0.type == .image })
            .map { $0.mediaItem }?
            .first(where: { $0.key == "image_base" })?
            .src
    }
}
