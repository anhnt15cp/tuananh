//
//  ViewController.swift
//  RunBall
//
//  Created by Tuấn Anh on 29/08/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ballView: UIView!
    
    var timer1: Timer?
    var timer2: Timer?
    var timer3: Timer?
    var timer4: Timer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
        leftToRight()
    }
    func setupUI() {
        ballView.clipsToBounds = true
        ballView.layer.cornerRadius = 30
    }
    func leftToRight() {
        timer1 = Timer.scheduledTimer(withTimeInterval: 0.0005, repeats: true, block: { _ in
            self.ballView.frame.origin.x += 0.1
            if self.ballView.frame.maxX >= self.view.frame.maxX {
                self.timer1?.invalidate()
                self.dowBall()
            }
        })
    }
    func dowBall() {
        timer2 = Timer.scheduledTimer(withTimeInterval: 0.0005, repeats: true, block: { _ in
            self.ballView.frame.origin.y += 0.1
            if self.ballView.frame.maxY >= self.view.frame.maxY {
                self.timer2?.invalidate()
                self.rightToLeft()
            }
        })
    }
    func rightToLeft() {
        timer3 = Timer.scheduledTimer(withTimeInterval: 0.0005, repeats: true, block: { _ in
            self.ballView.frame.origin.x -= 0.1
            if self.ballView.frame.minX <= self.view.frame.minX {
                self.timer3?.invalidate()
                self.upball()
                
            }
        })
        
    }
    func upball() {
        timer4 = Timer.scheduledTimer(withTimeInterval: 0.0005, repeats: true, block: { _ in
            self.ballView.frame.origin.y -= 0.1
            if self.ballView.frame.minY <= self.view.frame.minY {
                self.timer4?.invalidate()
                self.leftToRight()
            }
        })
        
    }
    }


