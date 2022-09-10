//
//  ViewController.swift
//  AutoLayout
//
//  Created by Tuấn Anh on 09/09/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    var timer: Timer?
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
            self.topConstraint.constant += 50
            if self.topConstraint.constant >= self.view.frame.maxY {
                self.timer?.invalidate()
            }
        })


    }


  
    
}

