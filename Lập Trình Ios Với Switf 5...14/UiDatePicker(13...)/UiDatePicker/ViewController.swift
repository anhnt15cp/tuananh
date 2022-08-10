//
//  ViewController.swift
//  UiDatePicker
//
//  Created by Tuấn Anh on 26/07/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var datepicker: UIDatePicker!
    @IBOutlet weak var result: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func value_changed(_ sender: UIDatePicker) {
        let selectDate = sender.date
        
        result.text = "\(selectDate)"
        print(selectDate)
        
        
       
        
    }
    

}

