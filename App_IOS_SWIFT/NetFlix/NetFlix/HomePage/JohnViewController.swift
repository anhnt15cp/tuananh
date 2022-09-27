//
//  JohnViewController.swift
//  NetFlix
//
//  Created by Tuấn Anh on 27/09/2022.
//

import UIKit

class JohnViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    @IBAction func cancelBT(_ sender: UIButton) {
        dismiss(animated: true)
    }
    @IBAction func myButton(_ sender: UIButton) {
        let vc = WebKitViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    

   

}
