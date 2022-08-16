//
//  ViewController.swift
//  AlertController
//
//  Created by Tuấn Anh on 22/07/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func ShowAlert(_ sender: UIButton) {
        let alertcontroller = UIAlertController(title: "Alert", message: "My AlertController", preferredStyle:.actionSheet)
        let acctionOK = UIAlertAction(title: "Ok", style: .default )
        print("acction ok ")
        let acctionCancel = UIAlertAction(title: "Cancel", style: .cancel)
        print("acction cancel ")
        let acctionDestrutive = UIAlertAction(title: "Destrutive", style: .destructive)
        print("acction destrutive ")
        alertcontroller.addAction(acctionOK)
        alertcontroller.addAction(acctionCancel)
        alertcontroller.addAction(acctionDestrutive)
        self.present(alertcontroller, animated: true)
   
    }
    

}

