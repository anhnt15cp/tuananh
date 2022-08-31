//
//  ViewController.swift
//  Runball
//
//  Created by Tuấn Anh on 31/08/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myIview: UIView!
    var timer1: Timer?
    var timer2: Timer?
    var timer3: Timer?
    var timer4: Timer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myIview.clipsToBounds = true
        myIview.layer.cornerRadius = myIview.bounds.height/2
        leftToRight()
        
    }
    func leftToRight() {
        timer1 = Timer.scheduledTimer(withTimeInterval: 0.005, repeats: true, block: { _ in
            self.myIview.frame.origin.x += 1
            if self.myIview.frame.maxX >= self.view.frame.maxX {
                self.timer1?.invalidate()
                self.upTodown()
            }
        })
        
    }
    
    func upTodown() {
        timer2 = Timer.scheduledTimer(withTimeInterval: 0.005, repeats: true, block: { _ in
            self.myIview.frame.origin.y += 1
            if self.myIview.frame.maxY >= self.view.frame.maxY {
                self.timer2?.invalidate()
                self.rightToleft()
            }
            
        })
        
    }
    
    func rightToleft() {
        timer3 = Timer.scheduledTimer(withTimeInterval: 0.005, repeats: true, block: { _ in
            self.myIview.frame.origin.x -= 1
            if self.myIview.frame.minX <= self.view.frame.minX {
                self.timer3?.invalidate()
                self.downToUp()
            }
        })
    }
    
    func downToUp() {
        timer4 = Timer.scheduledTimer(withTimeInterval: 0.005, repeats: true, block: { _ in
            self.myIview.frame.origin.y -= 1
            if self.myIview.frame.minY <= self.view.frame.minY {
                self.timer4?.invalidate()
            }
        })
    }
}



