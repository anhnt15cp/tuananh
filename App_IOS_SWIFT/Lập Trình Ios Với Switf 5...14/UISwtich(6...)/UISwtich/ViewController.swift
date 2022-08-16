//
//  ViewController.swift
//  UISwtich
//
//  Created by Tuấn Anh on 26/07/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    
    @IBAction func ChangeImage(_ sender: UISwitch) {
        if sender.isOn {
            image.image = UIImage(named: "1.jpg")
        }else  {
            image.image = UIImage(named: "2.jpeg")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

