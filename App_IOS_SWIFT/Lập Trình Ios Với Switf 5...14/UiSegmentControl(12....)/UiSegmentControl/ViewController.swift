//
//  ViewController.swift
//  UiSegmentControl
//
//  Created by Tuấn Anh on 26/07/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let mySegmencontrol = UISegmentedControl(frame: CGRect(x: 10, y: 100, width: 300, height: 30))
        mySegmencontrol.backgroundColor = .blue
        mySegmencontrol.insertSegment(withTitle: "Nguyen", at: 0, animated: true)
        mySegmencontrol.insertSegment(withTitle: "Tuan", at: 1, animated: true)
        mySegmencontrol.insertSegment(withTitle: "Anh", at: 2, animated: true)
        mySegmencontrol.insertSegment(with: UIImage(named: "1.jpg"), at: 3, animated: true)
        mySegmencontrol.selectedSegmentIndex = 3
      
        
        self.view.addSubview(mySegmencontrol)
    }

    @IBAction func Segmen_Changed(_ sender: UISegmentedControl) {
        
        let index = sender.selectedSegmentIndex
        print(index)
        
        
        
        
    }
    
}

