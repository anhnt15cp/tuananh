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
        // tạo URString
        let UrlString = "https://1.bp.blogspot.com/-n_bFzL9lPUU/Xp23H9Sk8yI/AAAAAAAAhyA/JYfvZhwguxc8vT_YS3w14Xi3YWf3hxqIQCLcBGAsYHQ/s1600/Hinh-Anh-Dep-Tren-Mang%2B%25282%2529.jpg"
        // liên kết URL  = URL ( URL String)
       let Url = URL(string: UrlString)
        
        //tạo Data
        let data = try! Data(contentsOf: Url!)
        
        // liên kết data vào trong imageview
        imageview.image = UIImage(data: data)
    
    }
    

}

