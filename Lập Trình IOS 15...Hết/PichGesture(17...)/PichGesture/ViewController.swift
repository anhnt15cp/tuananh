//
//  ViewController.swift
//  PichGesture
//
//  Created by Tuấn Anh on 28/07/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func handlePinch(_ sender: UIPinchGestureRecognizer) {
        
        if sender.state == .changed{
            sender.view?.transform = (sender.view?.transform.scaledBy(x: sender.scale, y: sender.scale))!
            
        }
        sender.scale = 1.0
    }
    

}

