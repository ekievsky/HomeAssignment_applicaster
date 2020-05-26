//
//  AssetsAPIRoute.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import Alamofire

enum AssetsAPIRoute {
    
    case link
    case video
}

extension AssetsAPIRoute: NetworkAPIRoutable {
    
    var method: HTTPMethod { return .get }
    var path: String {
        switch self {
        case .link: return "applicaster-employees/israel_team/Elad/assignment/link_json.json"
        case .video: return "applicaster-employees/israel_team/Elad/assignment/video_json.json"
        }
    }
    var parameters: [String: Any] { return [:] }
    var encoding: ParameterEncoding { return URLEncoding.default }
}
 
