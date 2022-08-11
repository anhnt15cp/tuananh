//
//  ViewController.swift
//  Máy Tính Bỏ Túi
//
//  Created by Tuấn Anh on 23/07/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var pheptinh : String!
    var so1 : Int!
    var so2 : Int!
    @IBOutlet weak var resultTF: UITextField!
    
    
    
    @IBAction func number0_clicked(_ sender: Any) {
        var value = resultTF.text ?? ""
        value = "0"
        resultTF.text = value
    }
    @IBAction func number1_clicked(_ sender: Any) {
        var value = resultTF.text ?? ""
        value = "1"
        resultTF.text = value
    }
    @IBAction func number2_clicked(_ sender: Any) {
        var value = resultTF.text ?? ""
        value = "2"
        resultTF.text = value
    }
    @IBAction func number3_clicked(_ sender: Any) {
        var value = resultTF.text ?? ""
        value = "3"
        resultTF.text = value
    }
    @IBAction func number4_clicked(_ sender: Any) {
        var value = resultTF.text ?? ""
        value = "4"
        resultTF.text = value
    }
    @IBAction func number5_clicked(_ sender: Any) {
        var value = resultTF.text ?? ""
        value = "5"
        resultTF.text = value
    }
    @IBAction func number6_clicked(_ sender: Any) {
        var value = resultTF.text ?? ""
        value = "6"
        resultTF.text = value
    }
    @IBAction func number7_clicked(_ sender: Any) {
        var value = resultTF.text ?? ""
        value = "7"
        resultTF.text = value
    }
    @IBAction func number8_clicked(_ sender: Any) {
        var value = resultTF.text ?? ""
        value = "8"
        resultTF.text = value
    }
    @IBAction func number9_clicked(_ sender: Any) {
        var value = resultTF.text ?? ""
        value = "9"
        resultTF.text = value
        
    }
    @IBAction func Plus_clicked(_ sender: Any) {
        pheptinh = "+"
        let value = resultTF.text ?? "0"
        	so1 = Int(value)
        resultTF.text = ""
        
        
    }
    @IBAction func minus_clicked(_ sender: Any) {
        pheptinh = "-"
        let value = resultTF.text ?? "0"
            so1 = Int(value)
        resultTF.text = ""
    }
    @IBAction func multi_clicked(_ sender: Any) {
        pheptinh = "*"
        let value = resultTF.text ?? "0"
            so1 = Int(value)
        resultTF.text = ""
    }
    @IBAction func division_clicked(_ sender: Any) {
        pheptinh = "/"
        let value = resultTF.text ?? "0"
            so1 = Int(value)
        resultTF.text = ""
    }
    @IBAction func result_clicked(_ sender: Any) {
        let value = resultTF.text ?? "0"
        so2 = Int(value)
        var finalResult = 0
        if pheptinh == "+" {
            finalResult = so1 + so2
        } else if pheptinh == "-" {
            finalResult = so1 - so2
        } else if pheptinh == "*" {
            finalResult = so1 * so2
        } else if pheptinh == "/" {
            finalResult = so1 / so2
            
        }
        
        resultTF.text = "\(finalResult)"
    
    }
    
    @IBAction func clear_clicked(_ sender: Any) {
        resultTF.text = ""
     
    }
    
    

}

