//
//  ViewController.swift
//  UIImageview
//
//  Created by Tuấn Anh on 26/07/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }
    @IBAction func localImageRemote(_ sender: UIButton) {
       let url = URL(string: "https://images4.content-hci.com/commimg/myhotcourses/blog/post/myhc_94121.jpg")
    let data = try! Data(contentsOf: url!)
        imageview.image = UIImage(data: data)
    }
    

}

