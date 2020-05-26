//
//  AssetsModelsParser.swift
//  HomeAssignment-applicasterTests
//
//  Created by Evgenii Kievsky on 26.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import Foundation

@testable import HomeAssignment_applicaster

class AssetsModelsParser {
    
    static var decoder: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }
    
    static var video: Video? {
        guard let data = Video.mock.data(using: .utf8),
            let video = try? decoder.decode(Video.self, from: data) else {
            return nil
        }
        return video
    }
    
    static var link: Link? {
        guard let data = Link.mock.data(using: .utf8),
            let link = try? decoder.decode(Link.self, from: data) else {
            return nil
        }
        return link
    }
    
    static var videos: [MediaAsset]? {
        guard let data = Video.mocksArray.data(using: .utf8),
            let assets = try? decoder.decode([Video].self, from: data) else {
            return nil
        }
        return assets
    }
    
    static var links: [MediaAsset]? {
        guard let data = Link.mocksArray.data(using: .utf8),
            let assets = try? decoder.decode([Link].self, from: data) else {
            return nil
        }
        return assets
    }
}
