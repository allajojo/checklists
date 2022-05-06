//
//  ViewController.swift
//  checklists
//
//  Created by Guest account on 4/15/22.
//  Copyright © 2022 com.timnazar. All rights reserved.
//

import UIKit

 class MainViewControler: UITableViewController {
    
    var  groups: [ChecklistGroup] = [
        ChecklistGroup(title: "Birthdays", imageName: "Birthdays", items: [
            ChecklistItem(isChecked: false, name: "Happy Birthday dear", dueDate: Date(), remindMe:  true)
        ]),
        ChecklistGroup(title: "Folder", imageName: "Folder", items: []),
        ChecklistGroup(title: "Chores", imageName: "Chores", items: []),
        ChecklistGroup(title: "Groceries", imageName: "Groceries", items: [
            ChecklistItem(isChecked: false, name: "Milk", dueDate: nil, remindMe: false)
        ]),
        ChecklistGroup(title: "To Do", imageName: "Inbox", items: [
            ChecklistItem(isChecked: true, name: "Wash plates", dueDate: Date(), remindMe: true)
        ])
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let group: ChecklistGroup = groups[indexPath.row]
        let cell =
            tableView.dequeueReusableCell(withIdentifier: "GroupCell") as! GroupTableViewCell
        cell.titleLable?.text = group.title
        
        cell.iconView.image = UIImage(named:group.imageName)
        
        cell.subtitleLable.text = group.getRemainings()
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MainToGroupDetails",
            let vc = segue.destination as? GroupDetailsTableViewController,
            let indexPath = tableView.indexPathForSelectedRow {
            vc.title = groups[indexPath.row].title
            vc.items = groups[indexPath.row].items
        }
    }
}
