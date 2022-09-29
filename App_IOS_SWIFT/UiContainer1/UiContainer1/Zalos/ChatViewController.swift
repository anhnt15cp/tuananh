//
//  ChatViewController.swift
//  UiContainer1
//
//  Created by Tuấn Anh on 26/09/2022.
//

import UIKit

class ChatViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        NotificationCenter.default.addObserver(self, selector: #selector(readNoti(_:)), name: Notification.Name("Quynh"), object: nil)
    }
    @objc func readNoti(_ notification: Notification) {
        if let data = notification.object as? Person {
            print(data)
            
        }
    }
    

}
