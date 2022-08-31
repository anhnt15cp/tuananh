//
//  InfoViewController.swift
//  ThucHanhGiaoDien2
//
//  Created by Tuấn Anh on 24/08/2022.
//

import UIKit

class InfoViewController: UIViewController {
    @IBOutlet weak var contentLabel: UILabel!
    
    var emailString = ""
    // Khai báo closure ở màn B
    var handleBack: (()->Void)?
    override func viewDidLoad() {
        super.viewDidLoad()

        contentLabel.text = emailString
    }

    @IBAction func acctionLogout(_ sender: UIButton) {
        dismiss(animated: true)
        //Gọi Closure
        self.handleBack?()
    }
    
  

}
