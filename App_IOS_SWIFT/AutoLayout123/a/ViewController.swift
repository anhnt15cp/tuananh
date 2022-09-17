//
//  ViewController.swift
//  a
//
//  Created by Tuấn Anh on 11/09/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myImgeView: UIImageView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passWordTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadImage()
        
        
    }
    func queueImage() {
    let queue = DispatchQueue(label: "LoadImage")
        queue.async {
            self.loadImage()
        }
    
    }
    
    func loadImage() {
        let url = URL(string: "https://toigingiuvedep.vn/wp-content/uploads/2021/05/hinh-anh-nam-buon-chat.jpg")!
        let data = try! Data(contentsOf: url)
        myImgeView.image = UIImage(data: data)
        myImgeView.contentMode = .scaleAspectFill
        
        
    }
    
    @IBAction func forgotPassWord(_ sender: UIButton) {
        let manHinh3 = manHinh3()
        manHinh3.modalTransitionStyle = .flipHorizontal
        manHinh3.modalPresentationStyle = .fullScreen
        
            
    
        present(manHinh3, animated: true)
    }
    
    @IBAction func logginButton(_ sender: UIButton) {
        if emailTextField.text == "" || passWordTextField.text == ""  {
            let alertcontroller = UIAlertController(title: "Vui Lòng", message: "Nhập Đầy Đủ Email và PassWord", preferredStyle: .alert)
            alertcontroller.addAction(UIAlertAction(title: "ok", style: .default, handler: { _ in
                self.emailTextField.text = "" ; self.passWordTextField.text = ""
            }))
            present(alertcontroller, animated: true)
            
        }else {
            let manHinh2 = manHinh2()
            manHinh2.modalTransitionStyle = .coverVertical
            manHinh2.modalPresentationStyle = .fullScreen
            present(manHinh2, animated: true)
            manHinh2.handleBack = {
                self.emailTextField.text = "" ; self.passWordTextField.text = ""
            }
        }
        
        
    }
    @IBAction func registerButton(_ sender: UIButton) {
        let manHinh4 = manHinh4()
        manHinh4.modalTransitionStyle = .flipHorizontal
        manHinh4.modalPresentationStyle = .fullScreen
        present(manHinh4, animated: true)
        
    }
    
    
}

