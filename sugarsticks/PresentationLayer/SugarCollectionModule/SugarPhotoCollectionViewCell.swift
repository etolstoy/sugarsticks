//
//  SugarPhotoCollectionViewCell.swift
//  sugarsticks
//
//  Created by Egor Tolstoy on 16/01/2017.
//  Copyright © 2017 etolstoy. All rights reserved.
//

import UIKit

class SugarPhotoCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
    func configureWith(model: Sugar) {
        let image = UIImage(named: model.photoImageName)
        imageView.image = image
    }
}
