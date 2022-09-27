//
//  ChatViewController.swift
//  UiContainer1
//
//  Created by Tuấn Anh on 26/09/2022.
//

import UIKit

class ChatViewController: UIViewController {
    
    var button1 = UIBarButtonItem(title: "Back", style: .done, target: self, action: #selector(add))
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = button1
        
    }
    
@objc func add() {

}

}
