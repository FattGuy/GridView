//
//  GridCollectionViewCell.swift
//  GridView
//
//  Created by Feng Chang on 10/4/20.
//

import UIKit

class GridCollectionViewCell: UICollectionViewCell {

    @IBOutlet var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setup(_ info: Circle) {
        imageView.image = info.image
    }
}
