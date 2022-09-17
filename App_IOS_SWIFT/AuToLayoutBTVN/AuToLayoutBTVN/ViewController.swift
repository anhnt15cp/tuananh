//
//  ViewController.swift
//  AuToLayoutBTVN
//
//  Created by Tuấn Anh on 16/09/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var forgotButton: UIButton!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var logginButton: UIButton!
    
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        logginButton.layer.cornerRadius = 20
        image1.layer.cornerRadius = 10
        image1.layer.masksToBounds = true
        image3.layer.cornerRadius = 10
        image3.layer.masksToBounds = true
        image2.layer.cornerRadius = 10
        image2.layer.masksToBounds = true
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
//         logginButton.layer.cornerRadius = 30
         

    }

}

