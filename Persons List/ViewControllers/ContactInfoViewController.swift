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
    
    @IBOutlet var personPhotoImage: UIImageView!
    var personList:Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personPhotoImage.layer.cornerRadius = 20
        
        emailLabel.text = personList.email
        phoneNumberLable.text = personList.phoneNumber
        personPhotoImage.image = UIImage(named: personList.name)
        
    }
    
}
