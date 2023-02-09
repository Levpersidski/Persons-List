//
//  PersonsListViewController.swift
//  Persons List
//
//  Created by Роман Бакаев on 07.02.2023.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    
    
    var personList:[Person]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Personslist", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = personList [indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactInfoVC = segue.destination as? ContactInfoViewController else {return}
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        
        let person = personList [indexPath.row]
        contactInfoVC.personList = person
    
}
}
