//
//  ActivityTableViewCell.swift
//  ActivityTimeManager
//
//  Created by Alex Cho on 2019-10-24.
//  Copyright © 2019 Alex Cho. All rights reserved.
//

import UIKit

class ActivityTableViewCell: UITableViewCell {
    

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var timeLabel1: UILabel!
    @IBOutlet weak var unitLabel1: UILabel!
    @IBOutlet weak var timeLabel2: UILabel!
    @IBOutlet weak var unitLabel2: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
