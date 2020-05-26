//
//  AssetListItemTableViewCell.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import UIKit
import Kingfisher

struct AssetListItem {
    let imageUrl: URL?
    let title: String
    let summary: String
    
    init(from model: MediaAsset) {
        self.imageUrl = URL(string: model.imageUrlString ?? "")
        self.title = model.title
        self.summary = model.summary
    }
}

class AssetListItemTableViewCell: UITableViewCell {
    
    private enum Constants {
        static let placeholderImage = UIImage(named: "picNewsPlaceholder")
    }
    
    @IBOutlet private var itemImageView: UIImageView!
    @IBOutlet private var titleLabel: UILabel!
    @IBOutlet private var summaryLabel: UILabel!

    func setup(with item: AssetListItem) {
        itemImageView.kf.setImage(with: item.imageUrl, placeholder: Constants.placeholderImage)
        titleLabel.text = item.title
        summaryLabel.text = item.summary
    }
}
