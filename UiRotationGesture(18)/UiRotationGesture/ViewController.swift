//
//  ViewController.swift
//  UiRotationGesture
//
//  Created by Tuấn Anh on 28/07/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func handleRotation(_ sender: UIRotationGestureRecognizer) {
        let orinalRotation = CGFloat()
       
         if sender.state == .changed {
            let newRotation = sender.rotation + orinalRotation
            sender.view?.transform = CGAffineTransform(rotationAngle: newRotation)
    
    }
    

}


}
