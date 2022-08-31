//
//  ViewController.swift
//  TinhTienDien
//
//  Created by Tuấn Anh on 26/08/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func acctionCaculate(_ sender: UIButton) {
        if let number = Int(inputTextField.text ?? ""),
           number > 0{// thỏa mãn điều kiện lớn hơn không
            var money = 0
            if number <= 50 {
                money = number * 1549
            } else if number <= 100 {
                money = 50 * 1549 + (number-50)*1600
            } else if number <= 200 {
                money = 50 * 1549 + 50 * 1600 + (number-100)*1858
            }else {
                money = 50 * 1549 + 50 * 1600 + (number-200)*2340
            }
            let alertController = UIAlertController(title: "Thông Báo", message: "Tổng Số Tiền Là : \(money)", preferredStyle: .alert)
            let okAcction = UIAlertAction(title: "Ok", style: .default) { _ in
                self.inputTextField.text = ""
            }
            alertController.addAction(okAcction)
            present(alertController, animated: true)
            
        } else{
            // nếu số nhập vào k hợp lệ ( nhập chữ hoặc 1 số nhỏ hơn hoặc bằng 0 )
            let alertController = UIAlertController(title: "Error", message: "Nhập 1 số lớn hơn 0", preferredStyle: .alert)
            let okAcction = UIAlertAction(title: "Ok", style: .default) { _ in
                self.inputTextField.text = ""
            }
            alertController.addAction(okAcction)
            present(alertController, animated: true)
        }
        
    }
    
}

