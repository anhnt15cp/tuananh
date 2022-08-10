//
//  ViewController.swift
//  UiPangesture
//
//  Created by Tuấn Anh on 28/07/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func handelPangesture(_ sender: UIPanGestureRecognizer) {
        //lấy sự dịch chuyển của PANGESTURE bằng options . TRANSLATION
        let translation = sender.translation(in: self.view)
        // thiết lập vị trí mới của view
        if let view = sender.view{
            view.center =  CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
            
        }
        sender.setTranslation(CGPoint.zero, in: self.view)
    }
    

}

