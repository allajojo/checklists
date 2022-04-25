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
        ChecklistGroup(title: "Birthdays", imageName: "Birthdays", subtitle: "All Done"),
        ChecklistGroup(title: "Folder", imageName: "Folder", subtitle: "No Items"),
        ChecklistGroup(title: "Chores", imageName: "Chores", subtitle: "Remaining"), ChecklistGroup(title: "Groceries", imageName: "Groceries", subtitle: "Remaining")
       
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
        
        cell.subtitleLable.text = group.subtitle
       
        return cell
    }
}
