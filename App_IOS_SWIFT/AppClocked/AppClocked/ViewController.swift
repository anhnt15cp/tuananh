//
//  ViewController.swift
//  AppClocked
//
//  Created by Tuấn Anh on 30/08/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var clockImage: UIImageView!
    
    @IBOutlet weak var hourImagg: UIImageView!
    
    @IBOutlet weak var minuteImage: UIImageView!
    
    @IBOutlet weak var secondImage: UIImageView!
    
    var timer: Timer?
    
    var hourLabel: UILabel = {
        let label = UILabel()
        label.text  = "00"
        label.textAlignment = .center
        label.textColor = .cyan
//        label.backgroundColor = .blue
        return label
    }()
    
    var minutesLabel: UILabel = {
        let label = UILabel()
        label.text  = "00"
        label.textAlignment = .center
        label.textColor = .cyan
//        label.backgroundColor = .blue
        return label
    }()
    
    
    var secondLabel: UILabel = {
        let label = UILabel()
        label.text  = "00"
        label.textAlignment = .center
        label.textColor = .cyan
//        label.backgroundColor = .blue
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getCurrentTime()
        setupTimer()
        setupUI()
    }
    func setupUI() {
        hourLabel.frame = .init(x: 80, y: 500, width: 60, height: 60)
        view.addSubview(hourLabel)
        minutesLabel.frame = .init(x: 120, y: 500, width: 60, height: 60)
        view.addSubview(minutesLabel)
        secondLabel.frame = .init(x: 160, y: 500, width: 60, height: 60)
        view.addSubview(secondLabel)
    }
    
    func getCurrentTime() {
        let date = Date()
        
        let calender = Calendar.current
        
        let components = calender.dateComponents([.hour,.minute,.second], from: date)
        
        guard let hour = components.hour,
              let minutes = components.minute,
              let second = components.second else {
            print("ABC")
            return
        }
        hourImagg.transform = CGAffineTransform(rotationAngle: .pi/6*CGFloat((hour)))
        minuteImage.transform = CGAffineTransform(rotationAngle: .pi/30*CGFloat(minutes))
        secondImage.transform = CGAffineTransform(rotationAngle: .pi/30*CGFloat(second))
        
        hourLabel.text = "\(hour)"
        minutesLabel.text = "\(minutes)"
        secondLabel.text = second < 10 ? "0\(second)" : "\(second)"
        
        
    }
    func setupTimer() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            self.getCurrentTime()
        }
    }
}

