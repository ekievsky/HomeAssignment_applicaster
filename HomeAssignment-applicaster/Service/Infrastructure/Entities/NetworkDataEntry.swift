//
//  NetworkDataEntry.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import Foundation

struct NetworkDataEntry<T: Codable>: Codable {
    
    let entry: [T]
}
