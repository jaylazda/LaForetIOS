//
//  ActivityTableViewCell.swift
//  LaForet
//
//  Created by Jacob Lazda on 2020-01-25.
//  Copyright © 2020 Jacob Lazda. All rights reserved.
//

import UIKit

class ActivityTableViewCell: UITableViewCell {
    @IBOutlet weak var activityTitle: UIButton!
    @IBAction func activityButtonPressed(_ sender: UIButton) {
    
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
