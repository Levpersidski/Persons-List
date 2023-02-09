//
//  PersonsTabBarController.swift
//  Persons List
//
//  Created by Роман Бакаев on 07.02.2023.
//

import UIKit

class PersonsTabBarController: UITabBarController {
    
    private let person = Person.getPersons()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sendPersonList()
        
    }
    
    
    func sendPersonList() {
        guard let viewControllers = viewControllers else {return}
        
        for viewController in viewControllers {
            if let navigationVC = viewController as? UINavigationController {
                if let personsListVC = navigationVC.topViewController as? PersonsListViewController {
                    personsListVC.personList = person
                    
                }
                
                else if let fullPersonsListVC = navigationVC.topViewController as? FullPersonsListViewController {
                    fullPersonsListVC.personList = person
                    
                }
                
            }
            
            
            
            
        }
    }
}
