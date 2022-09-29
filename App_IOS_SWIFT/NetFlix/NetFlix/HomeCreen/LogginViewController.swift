//
//  LogginViewController.swift
//  NetFlix
//
//  Created by Tuấn Anh on 27/09/2022.
//

import UIKit

class LogginViewController: UIViewController {
    @IBOutlet weak var myTextField1: UITextField!
    @IBOutlet weak var myTextField2: UITextField!
    @IBOutlet weak var myActivity: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now()+5, qos: .default, flags: .assignCurrentContext) { [self] in
            self.myActivity.stopAnimating()
            
        }
    }
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBAction func helpButton(_ sender: UIButton) {
        let vc = HelpViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .coverVertical
        present(vc, animated: true)
    }
    
    @IBAction func logginButton(_ sender: UIButton) {
        if myTextField1.text == "" || myTextField2.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Vui lòng điền kí tự", preferredStyle: .actionSheet)
            alertController.addAction(UIAlertAction(title: "OK", style: .default))
            present(alertController, animated: true)
        }else {
            myActivity.startAnimating()
            DispatchQueue.main.asyncAfter(deadline: .now()+5, qos: .default, flags: .assignCurrentContext) {
                let movieVC = MovieViewController()
                movieVC.modalPresentationStyle = .fullScreen
                self.present(movieVC, animated: true)
            }
        }
    }
    
    @IBAction func getPassword(_ sender: Any) {
        let getPassword = GetPassword2ViewController()
        getPassword.modalPresentationStyle = .fullScreen
        present(getPassword, animated: true)
    }
    
    @IBAction func showPassword(_ sender: Any) {
        myTextField2.isSecureTextEntry.toggle()
    }
    
    
    
}
