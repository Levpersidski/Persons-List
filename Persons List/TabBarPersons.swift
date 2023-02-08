//
//  TabBarPersons.swift
//  Persons List
//
//  Created by Роман Бакаев on 07.02.2023.
//

import UIKit

class TabBarPersons: UITabBarController {

    private let person = Person.getPerson()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      //в этом классе создаем единственный массив со списком контактов для того что бы список был единым на обоих экранах
        //Создав массив в этом классе мы его передаем на оба экрана перебирая массив вью контроллеров мы передаем в эти вью контроллеры массив со списком контактов
    }
    

  

}
