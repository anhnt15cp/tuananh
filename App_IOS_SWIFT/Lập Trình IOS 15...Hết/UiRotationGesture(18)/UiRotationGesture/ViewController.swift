//
//  ViewController.swift
//  UiRotationGesture
//
//  Created by Tuấn Anh on 28/07/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    
    @IBOutlet weak var myView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
       
        
    }
    
    @IBAction func rotationView(_ sender: UIRotationGestureRecognizer) {
        myView.transform = CGAffineTransform(rotationAngle: sender.rotation)
        
    }
    func setupUI() {
        image1.layer.backgroundColor = UIColor.orange.cgColor
        image2.layer.backgroundColor = UIColor.orange.cgColor
        image3.layer.backgroundColor = UIColor.orange.cgColor
        image4.layer.backgroundColor = UIColor.orange.cgColor
        myView.addSubview(image1)
        myView.addSubview(image2)
        myView.addSubview(image3)
        myView.addSubview(image4)
    }
    
        
    }
   
    

