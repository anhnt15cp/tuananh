//
//  CreateTodoViewController.swift
//  UiContainer1
//
//  Created by Tuấn Anh on 26/09/2022.
//

import UIKit
struct Person {
    var name: String = ""
    var age: String = ""
    var phone: String = ""
    var address: String = ""
    var gender: Int?
}


class CreateTodoViewController: UIViewController {
    var name: String?
    var person1: Person?
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    var passData: ((Person) -> Void)?
    
    var handleBack: (() -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        ageTextField.text = person1?.name
        numberTextField.text = person1?.phone
        
        navigationController?.navigationBar.topItem?.backButtonTitle = "" // Ẩn tên chuyển màn hình về của NavigationController
        
        guard let name = name else {
            return
        }
        navigationItem.title = name
        
        let saveButton = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(save))
        navigationItem.rightBarButtonItem = saveButton
    }
    @objc func save() {
        guard let name = name else {
            return
        }
        
        var person = Person(name: ageTextField.text!, age: ageTextField.text!, phone: numberTextField.text!, address: "", gender: nil)
        self.passData?(person)
        navigationController?.popViewController(animated: true) // quay về màn hình trước
        
//        let newPerson = Person(name: ageTextField.text, age: ageTextField.text, phone: nil, address: nil, gender: nil)
//        self.handleBack!()
    }
    
    
}
