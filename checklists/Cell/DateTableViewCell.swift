//
//  DateTableViewCell.swift
//  checklists
//
//  Created by Guest account on 4/25/22.
//  Copyright © 2022 com.timnazar. All rights reserved.
//

import UIKit

class DateTableViewCell: UITableViewCell {
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
       
            
        // Configure the view for the selected state
       
    }

}
