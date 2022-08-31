//
//  ViewController.swift
//  ThucHanhGiaoDien2
//
//  Created by Tuấn Anh on 24/08/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passWorkTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func acctionShowPasswork(_ sender: UIButton) {
        passWorkTextField.isSecureTextEntry.toggle() // toggle là đảo ngược giá trị Bool ( true/false )
        
    }
    @IBAction func acctionSighUp(_ sender: UIButton) {
        if emailTextField.text?.isEmpty ?? false
            || passWorkTextField.text?.isEmpty ?? false {
            let alertController = UIAlertController(title: "Error!!", message: "Fill all email and password to sign up ", preferredStyle: .alert)
            let acctionDone = UIAlertAction(title: "OK", style: .default) { _ in
                print("Đã ấn OK")
            }
            alertController.addAction(acctionDone)
            // hiện thị AlertController phải dùng present
            present(alertController, animated: true)
        }else {
            // chuyển sang màn 2
            let infoViewcontroller = InfoViewController()
            infoViewcontroller.emailString = emailTextField.text ?? "Unknow"
            infoViewcontroller.modalPresentationStyle = . fullScreen
            infoViewcontroller.modalTransitionStyle = .coverVertical
            //Gán closure thực hiện trước khi chuyển màn
            infoViewcontroller.handleBack = {
                self.passWorkTextField.text = ""
            }
            
            present(infoViewcontroller, animated: true)
        }
    }
    
    
}

