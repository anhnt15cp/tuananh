//
//  ViewController.swift
//  UIButton
//
//  Created by Tuấn Anh on 21/07/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let myButton = UIButton (frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        myButton.setTitle("My Button", for: .normal)
        myButton.setTitleColor(UIColor.red, for: .normal)
        myButton.setTitleColor(UIColor.opaqueSeparator, for: .highlighted)
        myButton.backgroundColor = UIColor.cyan
        myButton.addTarget(self, action: #selector(mybutton_clicked), for: .touchUpInside)
        self.view.addSubview(myButton)
    }

    @objc func mybutton_clicked(_ sender:UIButton){
  print("My Button is Clicked")
    
    

    
    
    
    


    

}
}
