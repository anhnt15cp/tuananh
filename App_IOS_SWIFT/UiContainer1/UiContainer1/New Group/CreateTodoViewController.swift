//
//  CreateTodoViewController.swift
//  UiContainer1
//
//  Created by Tuấn Anh on 26/09/2022.
//

import UIKit


class CreateTodoViewController: UIViewController {
    var name: String?
    var person: Person?
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    var passData: ((Person) -> Void)?
    
    var handleBack: (() -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if let person = person {
            ageTextField.text = person.age
            numberTextField.text = person.phone
            navigationItem.title = person.name
        }
    
        navigationController?.navigationBar.topItem?.backButtonTitle = "" // Ẩn tên chuyển màn hình về của NavigationController
        

        navigationItem.title = name
        
        let saveButton = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(save))
        navigationItem.rightBarButtonItem = saveButton
    }
    @objc func save() {
        guard let  age = ageTextField.text , let phone = numberTextField.text else {
            return
        }
        
        
       
        navigationController?.popViewController(animated: true) // quay về màn hình trước
        

    }
    
    
}
