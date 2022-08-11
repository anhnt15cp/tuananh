//
//  ViewController.swift
//  UiActivityIndicator
//
//  Created by Tuấn Anh on 26/07/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ActivityIndicator: UIActivityIndicatorView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func StarIndicator(_ sender: Any) {
        ActivityIndicator.startAnimating()
        
    }
    
    @IBAction func StopIndicator(_ sender: Any) {
        ActivityIndicator.stopAnimating()
    }
    


}

