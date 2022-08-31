//
//  ViewController.swift
//  CountDown
//
//  Created by Tuấn Anh on 31/08/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var mySlider: UISlider!
    var number: Int = 0
    
    var timer: Timer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func acctionSlider(_ sender: UISlider) {
        myLabel.text = "\(sender.value)"
        number = Int(sender.value)
    }
    
    @IBAction func acctionCount(_ sender: UIButton) {
        if number == 0 {
            let alercontroller = UIAlertController(title: "Error", message: "Vui Lòng Nhập Số", preferredStyle: .actionSheet)
            alercontroller.addAction(UIAlertAction(title: "Ok", style: .default))
            present(alercontroller, animated: true)
        } else {
            if timer?.isValid != nil {
            return
            }
            
            timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
                self.number -= 1
                if self.number <= 0 {
                    self.timer?.invalidate()
                }
                self.myLabel.text = "\(self.number)"
                self.mySlider.value = Float(self.number)
                
                
            })
        
        
        }
    }
    
    
}
