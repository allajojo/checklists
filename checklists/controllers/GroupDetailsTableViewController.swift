//
//  GroupDetailsTableViewController.swift
//  checklists
//
//  Created by Guest account on 4/22/22.
//  Copyright © 2022 com.timnazar. All rights reserved.
//

import UIKit
// TODO:
// 1 создать массив двнных
// 2

class GroupDetailsTableViewController: UITableViewController {
    
    var group: ChecklistGroup!
    var delegate: GroupDetailsProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return group.items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item: ChecklistItem = group.items[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItemCell", for: indexPath) as! ChecklistItemCellTableViewCell
        cell.itemNameLabel?.text = item.name
        
        cell.checkImageView.isHidden = !item.isChecked
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GroupDetailsToItemDetails",
            let vc = segue.destination as? AddItemTableViewController,
            let indexPath = tableView.indexPathForSelectedRow {
            
            vc.title = "Edit item"
            vc.item = group.items[indexPath.row]
            //items[indexPath.row].name
            
        }
    }
    
    // MARK: - обработка делегата таблицы или UITableVIewDelegate
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("тапнули на клетку \(indexPath.row)")
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        // удаляем данны из массива
        group.items.remove(at: indexPath.row)
        // удалить ячейку из самой таблицы
        tableView.deleteRows(at:[indexPath], with: .automatic)
        //
        delegate?.didDeleteItem(at: indexPath.row, with: group.title)
    }
}



