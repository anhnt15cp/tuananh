//
//  TrafficLighsViewController.swift
//  Bài 6
//
//  Created by Tuấn Anh on 15/08/2022.
//

import UIKit

class TrafficLighsViewController: UIViewController {
    @IBOutlet weak var Black: UIView!
    
    @IBOutlet weak var Red: UIView!
    
    @IBOutlet weak var Yello: UIView!
    
    @IBOutlet weak var Green: UIView!
    
    @IBOutlet weak var cotdenBlue: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Black.frame = CGRect(x: 0, y: 0, width: 150, height: 400)
        Black.center = self.view.center
        
        Red.frame = CGRect(x: 25, y: 30, width: 100, height: 100)
        self.Red.layer.cornerRadius = Red.bounds.height/2
        
        Yello.frame = CGRect(x: 25, y: 140 , width: 100, height: 100)
        self.Yello.layer.cornerRadius = Yello.bounds.height/2
        
        Green.frame = CGRect(x: 25, y: 250, width: 100, height: 100)
        self.Green.layer.cornerRadius = Green.bounds.height/2
        
        cotdenBlue.frame = CGRect(x: 170, y: 520, width: 30, height: 150)
        
        
        
        // Do any additional setup after loading the view.
    }
    
}
