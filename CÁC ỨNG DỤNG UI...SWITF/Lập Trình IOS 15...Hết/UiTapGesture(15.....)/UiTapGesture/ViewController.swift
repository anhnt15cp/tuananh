//
//  ViewController.swift
//  UiTapGesture
//
//  Created by Tuấn Anh on 28/07/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageview: UIImageView!
    
    var imageisOn = true
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func tapgesture_clicked(_ sender: UITapGestureRecognizer) {
        
       if imageisOn{
           imageview.image = UIImage(named: "1.jpg")}
        else {imageview.image = UIImage(named: "2.jpg")
        }
        imageisOn = !imageisOn
        
        
    }
    

}

