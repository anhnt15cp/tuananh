//
//  manHinh2.swift
//  a
//
//  Created by Tuấn Anh on 11/09/2022.
//

import UIKit

class manHinh2: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    var handleBack : (() -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true)
        self.handleBack?()
    }
    
    @IBAction func myDate(_ sender: UIDatePicker) {
        
        myLabel.text = "\(sender.date)"
    }
    
}
