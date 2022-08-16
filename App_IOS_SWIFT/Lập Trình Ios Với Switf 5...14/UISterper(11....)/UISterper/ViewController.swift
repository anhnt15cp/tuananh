//
//  ViewController.swift
//  UISterper
//
//  Created by Tuấn Anh on 26/07/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var myStepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let value = myStepper.value
        Label.text = "\(value)"
        
    }
    @IBAction func Stepper(_ sender: UIStepper) {
        let value = myStepper.value
        Label.text = "\(value)"
        
    }
    

}

