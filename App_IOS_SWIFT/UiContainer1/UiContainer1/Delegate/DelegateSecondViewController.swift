//
//  DelegateSecondViewController.swift
//  UiContainer1
//
//  Created by Tuấn Anh on 28/09/2022.
//

import UIKit

class DelegateSecondViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    
    var myDelegate: MyDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func acctionSave(_ sender: UIButton) {
        guard let name = nameTextField.text , let age = ageTextField.text , let phone = phoneTextField.text else {
            return
        }
        let person = Person(name: name, age: age, phone: phone, address: "", gender: nil)
        myDelegate?.passDelegate(person: person)
        navigationController?.popViewController(animated: true)
    }
    
   

}
