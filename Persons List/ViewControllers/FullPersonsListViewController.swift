//
//  FullPersonsListViewController.swift
//  Persons List
//
//  Created by Роман Бакаев on 07.02.2023.
//

import UIKit

class FullPersonsListViewController: UITableViewController {
    
    
    var personList:[Person]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
    }
    
    
    // MARK: - Table view
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let section = self.personList[section]
        return section.fullName
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FullList", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        let person = personList [indexPath.section]
        if indexPath.row == 0 {
            content.text = person.phoneNumber
            content.image = UIImage(systemName: Contacts.phone.rawValue)
        } else if indexPath.row == 1  {
            content.text = person.email
            content.image = UIImage(systemName: Contacts.email.rawValue)
        }
        
        cell.contentConfiguration = content
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        view.tintColor = .green.withAlphaComponent(0.3)
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = .purple.withAlphaComponent(0.5)
        header.textLabel?.font = UIFont(name: "Helvetica-Bold", size: 18)
    }
}


