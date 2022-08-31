//
//  ViewController.swift
//  AppClock
//
//  Created by Tuấn Anh on 29/08/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var clockImageview: UIImageView!
    
    @IBOutlet weak var hourImageView: UIImageView!
    
    @IBOutlet weak var minImageView: UIImageView!
    
    @IBOutlet weak var secondImageView: UIImageView!
    // Các label hiển thị giờ
    let hourLabel: UILabel = {
    let label = UILabel()
        label.text = "00"
        label.textColor = .cyan
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20, weight: .medium)
        
        return label
    } ()
    
    let minLabel: UILabel = {
    let label = UILabel()
        label.text = "00"
        label.textColor = .cyan
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20, weight: .medium)
        
        return label
    } ()
    
    let secLabel: UILabel = {
    let label = UILabel()
        label.text = "00"
        label.textColor = .black
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20, weight: .medium)
        
        return label
    } ()
    var timer: Timer? // Tạo timer
    override func viewDidLoad() {
        super.viewDidLoad()
        getCurrentTime()
        setupTimer()
        setupUI()
    }
    
    func setupUI() {
    // add vào superView
        view.addSubview(hourLabel)
        hourLabel.frame = .init(x: 100, y: 550, width: 40, height: 40)
        view.addSubview(minLabel)
        minLabel.frame = .init(x: hourLabel.frame.maxX + 16, y: 550, width: 40, height: 40)
        view.addSubview(secLabel)
        secLabel.frame = .init(x: minLabel.frame.maxX + 16, y: 550, width: 40, height: 40)
    
        
    }
    func setupTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
            self.getCurrentTime()
        })
    }
    
    
    func getCurrentTime() {
        let date = Date() // lấy thời gian hiện tại
        // tạo calender current
        let calender = Calendar.current
        // lấy ra 3 thành phần giờ phút giây
        let components = calender.dateComponents([.hour, .minute,.second], from: date)
        //Unwrap các đối tượng Optinal
        guard let hour = components.hour ,
              let min = components.minute,
              let sec = components.second else {
        print("cannot get currrent time!!!")
            return
        }
        //quay các kim theo giờ hiện tại
        hourImageView.transform = CGAffineTransform(rotationAngle: .pi/6 * CGFloat(hour))
        minImageView.transform = CGAffineTransform(rotationAngle: .pi/30*CGFloat(min))
        secondImageView.transform = CGAffineTransform(rotationAngle: .pi/30*CGFloat(sec))
        
        // Đồng hồ số
        hourLabel.text = "\(hour)"
        minLabel.text = min < 10 ? "0\(min)" : "\(min)"
        secLabel.text = sec < 10 ? "0\(sec)" : "\(sec)"
    }
    
}

