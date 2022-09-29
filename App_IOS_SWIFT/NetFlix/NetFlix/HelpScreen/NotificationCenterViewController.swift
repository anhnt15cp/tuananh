//
//  NotificationCenterViewController.swift
//  NetFlix
//
//  Created by Tuấn Anh on 28/09/2022.
//

import UIKit

class NotificationCenterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBAction func notification(_ sender: UIButton) {
        let vc = WebHelpViewController()
        present(vc, animated: true)
    }
    
  
}
