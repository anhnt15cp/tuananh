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
    @IBAction func helpButton(_ sender: UIButton) {
        let vc = HelpViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .coverVertical
        present(vc, animated: true)
    }
    
    @IBAction func logginButton(_ sender: UIButton) {
    }
    


}
