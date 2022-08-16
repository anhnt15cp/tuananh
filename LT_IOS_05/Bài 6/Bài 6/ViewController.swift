//
//  ViewController.swift
//  Bài 6
//
//  Created by Tuấn Anh on 15/08/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var squareView: UIView!
    
    @IBOutlet weak var circleView: UIView!
    
    let size : CGFloat = 200
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        squareView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        squareView.center = self.view.center
        
        circleView.frame = CGRect(x: view.center.x, y: view.center.y, width: size/2, height: size/2)
        circleView.layer.cornerRadius = circleView.bounds.height/2
        
        
    }


}

