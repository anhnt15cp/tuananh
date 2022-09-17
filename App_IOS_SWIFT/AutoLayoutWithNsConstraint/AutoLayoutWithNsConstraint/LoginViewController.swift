//
//  LoginViewController.swift
//  AutoLayoutWithNsConstraint
//
//  Created by Tuấn Anh on 14/09/2022.
//

import UIKit
import Stevia
class LoginViewController: UIViewController {
    let myLabel: UILabel = {
        let label = UILabel()
        label.text = "Stevia"
        label.backgroundColor = .orange
        return label
        
    }()
    
    let emailTextField: UITextField = {
        let email = UITextField()
        email.placeholder = "Email"
        return email
    }()
    
    
    let passwordTextField: UITextField = {
        let email = UITextField()
        email.placeholder = "Password"
        return email
    }()
    
    let loginButton: UIButton = {
    let loggin = UIButton()
        loggin.setTitle("Login", for: .normal)
        loggin.setTitleColor(UIColor.orange, for: .normal)
        return loggin
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.subviews(myLabel,
                      emailTextField,
                      passwordTextField,
                      loginButton
        )
        
        myLabel.layout(
            50,
            |-20-myLabel-20-| ~ 100,
            100,
            |-emailTextField-| ~ 80,
            8,
            |-passwordTextField-| ~ 80,
            >=20,
            |loginButton| ~ 80,
            0
            
        )
        
    }
    
    
    
    
}
