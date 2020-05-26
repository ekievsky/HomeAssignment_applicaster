//
//  Strings.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import Foundation
import Foundation

enum Strings {

    enum Common {
        static let ok = Strings.localizedString(key: "common.ok")
        static let error = Strings.localizedString(key: "common.error")
        static let wrongUrlStringFormat = Strings.localizedString(key: "common.wrong_url_string_format")
    }
    
    enum AssetsList {
        static let title = Strings.localizedString(key: "assets_list.title")
    }
    
    enum AssetWebView {
        static let title = Strings.localizedString(key: "assets_web_view.title")
    }
}

extension Strings {
    private static func localizedString(table: String = "Localizable", key: String) -> String {
        let format = NSLocalizedString(key, tableName: table, bundle: .main, comment: "")
        return String(format: format, locale: Locale.current)
    }
}
