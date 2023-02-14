//
//  PersonsTabBarController.swift
//  Persons List
//
//  Created by Роман Бакаев on 07.02.2023.
//

import UIKit

class PersonsTabBarController: UITabBarController {
    
    private let person = Person.getContactList()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sendPersonList()
        
    }
    
    func sendPersonList() {
     
    
        guard let personsListVC = viewControllers?.first as? PersonsListViewController else {return}
        guard let fullPersonsListVC = viewControllers?.last as? FullPersonsListViewController else {return}
                    personsListVC.personList = person
            fullPersonsListVC.personList = person

                }
                
            }

