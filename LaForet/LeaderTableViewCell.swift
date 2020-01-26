//
//  LeaderTableViewCell.swift
//  LaForet
//
//  Created by Jacob Lazda on 2020-01-26.
//  Copyright © 2020 Jacob Lazda. All rights reserved.
//

import UIKit

class LeaderTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var treesLabel: UILabel!
    @IBOutlet weak var daysLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
