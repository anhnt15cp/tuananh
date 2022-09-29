//
//  ProfileViewController.swift
//  UiContainer1
//
//  Created by Tuấn Anh on 26/09/2022.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func onSendData(_ sender: UIButton) {
        let person = Person(name: "Anh", age: "18", phone: "0123", address: "60", gender: 1)
        NotificationCenter.default.post(name: Notification.Name(rawValue: "Quynh"), object: person)
        
    }
    
    
    
}
