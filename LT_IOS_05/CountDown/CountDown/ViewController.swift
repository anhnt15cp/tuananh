//
//  ViewController.swift
//  CountDown
//
//  Created by Tuấn Anh on 29/08/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var timeSlider: UISlider!
    var timer: Timer?
    var number: Int = 0
        
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    @IBAction func changeValue(_ sender: UISlider) {
        timeLabel.text = String(format: "%.0f", sender.value)
        number = Int(sender.value)
    }
    
    @IBAction func acctionStart(_ sender: UIButton) {
        if number == 0 {
        // Yêu cầu người dùng chọn giá trị lớn hơn không
            let alertcontroller = UIAlertController(title: "Warning", message: "Chọn thời gian", preferredStyle: .alert)
            alertcontroller.addAction(UIAlertAction(title: "Ok", style: .default))
            present(alertcontroller, animated: true)
        }else {
            // kiêm tra nếu Timer đang chạy rồi thì k tạo thêm timer nữa
            if ((timer?.isValid) != nil) {
            return
                
            }
            timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
                self.number -= 1
                if self.number <= 0 {
                    self.timer?.invalidate()
                }
                self.timeLabel.text = "\(self.number)"
                self.timeSlider.value = Float(self.number)
            })
        }
    }
    

}

