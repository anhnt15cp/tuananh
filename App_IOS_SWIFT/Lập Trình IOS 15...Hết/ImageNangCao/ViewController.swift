//
//  ViewController.swift
//  a
//
//  Created by Tuấn Anh on 28/08/2022.
//

import UIKit

class ViewController: UIViewController {
    var array: [UIImage] = [UIImage(named: "1.jpg")!,UIImage(named: "2.jpg")!,UIImage(named: "3.jpg")!]
    
    var n = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        loadhinhGCD(url: "https://toanthaydinh.com/wp-content/uploads/2020/03/anh-stt-buon-co-don.jpg", vitri: 0)
        loadhinhGCD(url: "https://toanthaydinh.com/wp-content/uploads/2020/04/hinh-anh-dep-ve-tinh-yeu-2-1-1-7.jpg", vitri: 1)
        loadhinhGCD(url: "https://thuthuat123.com/uploads/2018/02/01/nhung-hinh-anh-buon-2_090556.jpg", vitri: 2)
        
    }

    @IBAction func ClickedImage(_ sender: UIButton) {
        n = n + 1
        self.view.backgroundColor = UIColor(patternImage: array[n])
        if n == 2 {
        n = -1
        }
    }
    func loadhinhGCD(url: String , vitri: Int) {
        let queue = DispatchQueue(label: "LoadHinh", qos: .default, attributes: .concurrent)
        queue.async {
            let URL = URL(string: url)
            let data = try! Data(contentsOf: URL!)
            self.array[vitri] = UIImage(data: data)!
            
        }
    }
}

