//
//  ViewController.swift
//  UiTextView
//
//  Created by Tuấn Anh on 26/07/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let myTextview = UITextView(frame: CGRect(x: 50, y: 250, width: 300, height: 300))
        myTextview.text = " Để sử dụng Data Detectors của UITextView các bạn bỏ chọn Behavior Editable, chọn vào mục còn detect ở đây mình chọn: Phone Number, Link và Address ở mục Data Detectiors. Sau đó thêm số điện thoại, link website và email bất kỳ vào trong phần Text, ở đây mình sẽ thêm “https://laptrinh0kho.com “, ” 0987 360 431"
        myTextview.textColor = UIColor.blue
        myTextview.font = UIFont(name: "Gill Sans Italic", size: 30)
        myTextview.dataDetectorTypes = .phoneNumber
        myTextview.backgroundColor = .opaqueSeparator
        myTextview.layer.cornerRadius = 10
        myTextview.layer.borderWidth = 1
        myTextview.layer.backgroundColor = UIColor.lightText.cgColor
        myTextview.contentInsetAdjustmentBehavior = .never
        myTextview.dataDetectorTypes = .link
    
        
        self.view.addSubview(myTextview)
        
    }


}

