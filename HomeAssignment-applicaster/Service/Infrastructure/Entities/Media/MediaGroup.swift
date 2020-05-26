//
//  MediaGroup.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import Foundation

enum MediaGroupType: String, Codable {
    
    case image
}

struct MediaGroup: Codable {
    
    let type: MediaGroupType
    let mediaItem: [MediaItem]
}

