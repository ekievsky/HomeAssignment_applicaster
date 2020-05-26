//
//  Link.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import Foundation

protocol MediaAsset: Codable {
    
    var id: String { get }
    var title: String  { get }
    var summary: String { get }
    var type: MediaAssetType { get }
    var imageUrlString: String? { get }
    var mediaGroup: [MediaGroup] { get }
}
