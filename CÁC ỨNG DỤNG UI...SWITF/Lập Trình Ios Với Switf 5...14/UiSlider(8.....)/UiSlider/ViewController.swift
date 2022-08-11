//
//  ViewController.swift
//  UiSlider
//
//  Created by Tuấn Anh on 26/07/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
}

