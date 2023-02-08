//
//  Person.swift
//  Persons List
//
//  Created by Роман Бакаев on 06.02.2023.
//

import UIKit

struct Person {
    
    let data = DataManager()
    var name: String
    var surname: String
    var phoneNumber: Int
    var email: String
    
    
    static func getPersons (names: [String], surnames: [String], phoneNumbers: [String], emails: [String]) -> [Person] {
        //Это проверка на одинаковое количество эл-ов в массиве. Если количество будет отличаться, то через гард не пройдет -> вернет пустой массив.
        guard names.count == surnames.count &&
             names.count == phoneNumbers.count &&
             names.count == emails.count else { return []}
        
        for person in data{
            Person(name: data.names.randomElement() ?? "name",
                                 surname: surnames.randomElement() ?? "surname",
                                 phoneNumber: Int(phoneNumbers.ra) ?? 0,
                                 email: emails[]))
        }
        return person
    }
    
    
}
