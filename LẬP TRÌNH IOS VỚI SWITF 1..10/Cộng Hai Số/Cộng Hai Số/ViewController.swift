//
//  ViewController.swift
//  Cộng Hai Số
//
//  Created by Tuấn Anh on 23/07/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberTextfield1: UITextField!
    @IBOutlet weak var numberTextfield2: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func CalculateNumber_Clicked(_ sender: Any) {
        let number1 = numberTextfield1.text ?? ""
        let number2 = numberTextfield2.text ?? ""
        
        
        if number1 == ""  || number2 == "" {
            let alertcontroller = UIAlertController(title: "Thông Báo", message: "Vui Lòng Nhập Đầy Đủ Thông TIn", preferredStyle: .alert)
            let  acctionOk = UIAlertAction(title: "Ok", style: .default)
            alertcontroller.addAction(acctionOk)
            self.present(alertcontroller, animated: true)
            
            
    }
        let result = Int(number1)! + Int(number2)!
        
        resultLabel.text = "Kết Quả \(result)"
        
        
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
       let label1 = UILabel(frame: CGRect(x: 100, y: 100, width: 300, height: 30))
        label1.text = "Số Thứ Nhất"
        numberTextfield1.leftView = label1
        numberTextfield1.leftViewMode = .always
        
        let label2 = UILabel(frame: CGRect(x: 50, y: 50, width: 300, height: 30))
         label2.text = "Số Thứ Hai"
         numberTextfield2.leftView = label2
         numberTextfield2.leftViewMode = .always
        
        
    }


}

