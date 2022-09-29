//
//  DelegateFirstViewController.swift
//  UiContainer1
//
//  Created by Tuấn Anh on 28/09/2022.
//

import UIKit

class DelegateFirstViewController: UIViewController {

    
    
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let addButtun = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(onGoToDelegate2))
        navigationItem.rightBarButtonItem = addButtun
    }
    @objc func onGoToDelegate2() {
        let delegate2VC = DelegateSecondViewController()
        
        delegate2VC.myDelegate = self
        navigationController?.pushViewController(delegate2VC, animated: true)
        
    }

   
}
extension DelegateFirstViewController: MyDelegate {
    func passDelegate(person: Person) {
        myLabel.text = person.name + " " + person.age + " " + person.phone
    }
    
    
    
}
