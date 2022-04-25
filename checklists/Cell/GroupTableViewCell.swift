//
//  GroupTableViewCell.swift
//  checklists
//
//  Created by Guest account on 4/20/22.
//  Copyright © 2022 com.timnazar. All rights reserved.
//

import UIKit

class GroupTableViewCell: UITableViewCell {
    @IBOutlet weak var subtitleLable: UILabel!
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var iconView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
