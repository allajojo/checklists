//
//  ChecklistItemCellTableViewCell.swift
//  checklists
//
//  Created by Guest account on 4/22/22.
//  Copyright © 2022 com.timnazar. All rights reserved.
//

import UIKit

class ChecklistItemCellTableViewCell: UITableViewCell {
    @IBOutlet weak var itemNameLabel: UILabel!
    
    @IBOutlet weak var infoImageView: UIImageView!
    @IBOutlet weak var chevronImageView: UIImageView!
    @IBOutlet weak var checkImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
