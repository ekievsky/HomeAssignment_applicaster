//
//  OptionalType.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import Foundation

protocol OptionalType {
    
    associatedtype Wrapped

    var value: Wrapped? { get }
}

extension Optional: OptionalType {

    var value: Wrapped? {
        return self
    }
}
