//
//  LogginViewController.swift
//  NetFlix
//
//  Created by Tuấn Anh on 27/09/2022.
//

import UIKit

class LogginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    @IBAction func loginButton(_ sender: UIButton) {
    }
    @IBAction func helpButton(_ sender: UIButton) {
        let vc = HelpViewController()
        
        present(vc, animated: true)
    }
    


}
