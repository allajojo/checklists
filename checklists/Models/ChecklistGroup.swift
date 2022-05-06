//
//  ChecklistGroup.swift
//  checklists
//
//  Created by Guest account on 4/18/22.
//  Copyright © 2022 com.timnazar. All rights reserved.
//

import Foundation

struct ChecklistGroup {
    var title: String
    var imageName: String
    var items: [ChecklistItem]
    
    func getRemainings() -> String {
        //to do
        // 1 All Done
        var isAllDone = true
        
        for item in items  {
            if item.isChecked == false {
                isAllDone = false
        }
        }
        //2 ( No Items)
       if items.isEmpty {
            return "(No items)"
        }
        else if !isAllDone, items.count != 0 {
            return "\(items.count) Remaining"
        }
        
        if  isAllDone {
            return "All Done"
        } else {
           return "Incorrect data"
        }
    }
}
