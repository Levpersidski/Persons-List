//
//  ContactInfoViewController.swift
//  Persons List
//
//  Created by Роман Бакаев on 09.02.2023.
//

import UIKit

class ContactInfoViewController: UIViewController {
    
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneNumberLable: UILabel!
    
    var personList:Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailLabel.text = personList.email
        phoneNumberLable.text = personList.phoneNumber
    }
    

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
