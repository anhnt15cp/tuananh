//
//  ViewController.swift
//  Animation Dog
//
//  Created by Tuấn Anh on 26/07/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Imageview: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ValueChanged(_ sender: UISlider) {
        let index = Int(sender.value)
        
        let image = UIImage(named: "\(index).jpg")
        
        Imageview.image = image
    }
    
}

