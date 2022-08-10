//
//  ViewController.swift
//  TextField
//
//  Created by Tuấn Anh on 21/07/2022.
//

import UIKit

class ViewController: UIViewController {
    let textField = UITextField(frame:CGRect(x: 100, y: 100, width: 200, height: 40))

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
     
        textField.text = "My Viettel"
        textField.textColor = UIColor.red
        textField.placeholder = "Tele Phone"
        textField.keyboardType = .emailAddress
        textField.isSecureTextEntry .self
        textField.clearButtonMode = .always
        textField.borderStyle = .roundedRect
        
        
        self.view.addSubview(textField)
        
        
        
    }
    
    
    
}

