//
//  ViewController.swift
//  DrawBrick
//
//  Created by Tuấn Anh on 07/09/2022.
//

import UIKit

class ViewController: UIViewController {
    let radius: CGFloat = 50
    let fillColor: UIColor = UIColor.red
  
    @IBOutlet weak var myview: UIView!
    
    @IBOutlet weak var image1: UIView!
    
    @IBOutlet weak var image2: UIView!
    
    @IBOutlet weak var image3: UIView!
    
    @IBOutlet weak var image4: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let brichView = BrichView(startPoin: CGPoint(x: 100, y: 30), radius: radius, fillColor: fillColor)
        let brichView1 = BrichView(startPoin: CGPoint(x: 100, y: brichView.frame.maxY), radius: radius, fillColor: fillColor)
        let brichView2 = BrichView(startPoin: CGPoint(x: 100, y: brichView1.frame.maxY), radius: radius, fillColor: fillColor)
        let brichView3 = BrichView(startPoin: CGPoint(x: 100, y: brichView2.frame.maxY), radius: radius, fillColor: fillColor)
        let brichView4 = BrichView(startPoin: CGPoint(x: brichView3.frame.maxX, y: brichView3.frame.minY), radius: radius, fillColor: fillColor)
        
        view.addSubview(brichView4)
        view.addSubview(brichView3)
        view.addSubview(brichView2)
        view.addSubview(brichView1)
        
        view.addSubview(brichView)
       
       
      
    }
    func setUpUi() {
        image4.layer.backgroundColor = UIColor.orange.cgColor
        image4.layer.backgroundColor = UIColor.orange.cgColor
        image4.layer.backgroundColor = UIColor.orange.cgColor
        image4.layer.backgroundColor = UIColor.orange.cgColor
        
    }
   
    @IBAction func RotationView(_ sender: UIRotationGestureRecognizer) {
//        if sender.state == .changed {
//            sender.view?.transform = (sender.view?.transform.scaledBy(x: sender.rotation, y: sender.rotation))!
            myview.transform = CGAffineTransform(rotationAngle: sender.rotation)
        
        }
        
    }
    
    
    



