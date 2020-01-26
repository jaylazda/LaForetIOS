//
//  TreeImageCollectionViewCell.swift
//  LaForet
//
//  Created by Jacob Lazda on 2020-01-25.
//  Copyright © 2020 Jacob Lazda. All rights reserved.
//

import UIKit

class TreeImageCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var treeImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        treeImage.image = #imageLiteral(resourceName: "fire")
    }

}
