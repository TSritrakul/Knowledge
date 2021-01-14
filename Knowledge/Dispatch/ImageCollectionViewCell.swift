//
//  ImageCollectionViewCell.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 23/6/2563 BE.
//  Copyright © 2563 Thatchaphon Sritrakul. All rights reserved.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var backgroundImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupData(url: UIImage) {
        self.backgroundImage.image = url
    }

}
