//
//  ViewController.swift
//  1
//
//  Created by Tuấn Anh on 18/08/2022.
//

import UIKit

class ViewController: UIViewController {
     @IBOutlet weak var rubyImageView: UIImageView!
        
        @IBOutlet weak var amRichLabel: UILabel!

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        /// Trạng thái alpha ban đầu là không nhìn thấy
                rubyImageView.alpha = 0.0
              amRichLabel.alpha = 0.0

              /// Vị trí của text ban đầu là ở cuối màn hình
               amRichLabel.center = CGPoint(x: view.center.x, y: view.center.y + 300)
               
               UIView.animate(withDuration: 5) {
               /// Hiện alpha dần dần
                   self.rubyImageView.alpha = 1.0
                   self.amRichLabel.alpha = 1.0

                   /// Di chuyển vịị trí của label đi lên
                   self.amRichLabel.center.y = self.view.center.y + 100
               }
           }
    @IBAction func Clicked_image(_ sender: UIButton) {
        let URLString = "https://toanthaydinh.com/wp-content/uploads/2020/04/hinh-anh-hoang-hon-dep-va-yen-binh-se-khien-ban-cam-thay-su-thanh-than-trong-tam-hon-4-1.jpg"
        
        let url = URL(string: URLString)
        
        let data = try! Data(contentsOf: url!)
        
        rubyImageView.image = UIImage(data: data)
        
        
    }
    
    @IBAction func Clicked_image2(_ sender: UIButton) {
        let urlString = "https://www.elleman.vn/wp-content/uploads/2017/08/18/hinh-anh-dep-1.jpg"
        let url = URL(string: urlString)
        let data = try! Data(contentsOf: url!)
        
        imageView.image = UIImage(data: data)
    }
    
    
    
    }




