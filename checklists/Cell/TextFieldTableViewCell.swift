//
//  NewChecklistTableViewCell.swift
//  checklists
//
//  Created by Guest account on 4/25/22.
//  Copyright © 2022 com.timnazar. All rights reserved.
//

import UIKit

class TextFieldTableViewCell: UITableViewCell {
    
    @IBOutlet weak var textField: UITextField!
    // здесь сама добавила
    let datePicker = UIDatePicker()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        // сама добавила 2 строчки
        textField.inputView = datePicker
        datePicker.datePickerMode = .date
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
// здесь сама добавила
        func getDateFromPicker(){
            let formatter = DateFormatter()
            formatter.dateFormat = "dd.MM.yyyy HH:mm"
            textField.text = formatter.string(from: datePicker.date)
        }
    }

}
