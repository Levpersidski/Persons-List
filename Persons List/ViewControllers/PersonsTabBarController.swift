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

     
        
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let tabBarController = segue.destination as? UITabBarController else {return}
            guard let viewControllers = tabBarController.viewControllers else {return}
            
            for viewController in viewControllers {
                if let personsListVC = viewController as? PersonsListViewController {
                    personsListVC.person = person
                
                
                
            }
    }
    

  

}
}
}
