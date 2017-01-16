//
//  SugarInfoTableViewCell.swift
//  sugarsticks
//
//  Created by Egor Tolstoy on 16/01/2017.
//  Copyright © 2017 etolstoy. All rights reserved.
//

import UIKit

class SugarInfoTableViewCell: UITableViewCell {
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!

    func configureWith(model: Sugar) {
        let image = UIImage(named: model.photoImageName)
        photoImageView.image = image
        nameLabel.text = model.name
    }

}
