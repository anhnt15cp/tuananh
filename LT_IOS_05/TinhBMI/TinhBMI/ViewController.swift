//
//  ViewController.swift
//  TinhBMI
//
//  Created by Tuấn Anh on 26/08/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var weightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func acctionTinhBMI(_ sender: UIButton) {
        //BMI = ( cân nặng )/(chiều cao x 2 )
        let BMI = weightSlider.value/(heightSlider.value/100*2)
        switch BMI {
        case ...18.5 :
            // Gầy
            let alertControler = UIAlertController(title: "\(BMI)", message: "Tình Trạng Gầy", preferredStyle: .actionSheet)
    
            alertControler.addAction(UIAlertAction(title: "Ok", style: .default))
            alertControler.addAction(UIAlertAction(title: "Cancel", style: .cancel))
            alertControler.addAction(UIAlertAction(title: "Destructive", style:.destructive))
            present(alertControler, animated: true)
        case 18.5...24.9 :
            let alertControler = UIAlertController(title: "\(BMI)", message: "Tình Trạng Bình Thường", preferredStyle: .alert)
            alertControler.addAction(UIAlertAction(title: "Ok", style: .default))
            present(alertControler, animated: true)
        case 25...29.9 :
            // Tăng cân
            let alertControler = UIAlertController(title: "\(BMI)", message: "Tình Trạng Tăng Cân", preferredStyle: .alert)
            alertControler.addAction(UIAlertAction(title: "Ok", style: .default))
            present(alertControler, animated: true)
        default :
            // Béo phì
            let alertControler = UIAlertController(title: "\(BMI)", message: "Tình Trạng Béo Phì", preferredStyle: .alert)
            alertControler.addAction(UIAlertAction(title: "Ok", style: .default))
            present(alertControler, animated: true)
        }
    }
    
    @IBAction func changeHeightValue(_ sender: UISlider) {
        heightLabel.text = String(format: "%.1f", sender.value)

    }
    
    @IBAction func changeWeightSlider(_ sender: UISlider) {
        weightLabel.text = String(format: "%.1f", sender.value)

    }
}

