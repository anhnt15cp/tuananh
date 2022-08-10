//
//  ViewController.swift
//  Options FRAME
//
//  Created by Tuấn Anh on 29/07/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func UP(_ sender: UIButton) {
        let y = imageview.frame.origin.y
        
        imageview.frame.origin.y = y - 10
        
        let yy = imageview.frame.size.width
        imageview.frame.size.width = yy - 10
        
    }
    @IBAction func dow(_ sender: UIButton) {
        let y = imageview.frame.origin.y
        
        imageview.frame.origin.y = y + 10
        
        let yy = imageview.frame.size.width
        imageview.frame.size.width = yy + 10
    }
    @IBAction func left(_ sender: UIButton) {
        let x = imageview.frame.origin.x
        
        imageview.frame.origin.x = x - 10
    }
    @IBAction func righ(_ sender: UIButton) {
        let x = imageview.frame.origin.x
        
        imageview.frame.origin.x = x + 10
    }
    

}

