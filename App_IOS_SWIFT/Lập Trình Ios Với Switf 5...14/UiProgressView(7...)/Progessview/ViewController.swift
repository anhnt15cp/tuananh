//
//  ViewController.swift
//  Progessview
//
//  Created by Tuấn Anh on 26/07/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var progessView: UIProgressView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
            self.progessView.progress += 0.01
            
        }
        
    }


}

