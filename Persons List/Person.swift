//
//  Person.swift
//  Persons List
//
//  Created by Роман Бакаев on 06.02.2023.
//

import UIKit

struct Person {
    var name: String
    var surname: String
    var phoneNumber: String
    var email: String
    
    
    static func getPersons() -> [Person] {
        let data = DataManager()
        var persons: [Person] = []
        guard data.names.count == data.surnames.count &&
                data.names.count == data.phones.count &&
                data.names.count == data.emails.count else { return []}
        
        for _ in data.names{
            persons.append(Person(name: data.names.randomElement() ?? "name", surname: data.surnames.randomElement() ?? "surname", phoneNumber: data.phones.randomElement() ?? "79991114455" , email: data.emails.randomElement() ?? "new@mail.ru"))
            
        }
        return persons
    }
    
}
