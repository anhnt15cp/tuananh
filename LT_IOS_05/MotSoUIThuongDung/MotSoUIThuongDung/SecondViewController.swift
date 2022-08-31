//
//  SecondViewController.swift
//  MotSoUIThuongDung
//
//  Created by Tuấn Anh on 22/08/2022.
//

import UIKit

class SecondViewController: UIViewController {
    // tạo button
    let backButton : UIButton = {
        // Dùng 1 biến trung gian để return
        let  button = UIButton()
        button.backgroundColor = .blue
        // set text trong button
        button.setTitle("Back", for: .normal)
        button.setTitleColor(UIColor.green, for: .normal)
        return button
    }()
    
    
    
    
    var handdleBack: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        
    }
    func setupUI() {
        view.backgroundColor = .brown
        //add vào supperView
        view.addSubview(backButton)
        //Set vị trí cho button Back
        backButton.frame = CGRect(x: 16, y: 30, width: 50 , height: 30)
        
        backButton.addTarget(self, action: #selector(acctionBack), for: .touchUpInside)
    }
    @objc func acctionBack() {
        // dùng present thì phải dùng dissmiss trở về
        dismiss(animated: true)
        self.handdleBack?()
    }
}
