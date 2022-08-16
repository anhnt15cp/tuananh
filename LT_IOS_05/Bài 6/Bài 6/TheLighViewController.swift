//
//  TheLighViewController.swift
//  Bài 6
//
//  Created by Tuấn Anh on 15/08/2022.
//

import UIKit

class TheLighViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var button: UIButton!
    
    var imageisOn : Bool = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      
        photoImageView.backgroundColor = .red
        photoImageView.image = UIImage(named: "BulbOff")
        // MARK : ContenMode : scaleToFill , scaleAspectFit , scaleAspectFill
        photoImageView.contentMode = .scaleToFill
        
        button.setTitle("Press Me", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        
        button.setTitle("Presing", for: .highlighted)
        button.setTitleColor(UIColor.red, for: .highlighted)
        
    }
    
    @IBAction func Clicked(_ sender: UIButton) {
        if imageisOn {
            photoImageView.image = UIImage(named: "BulbOff")
        } else {
            photoImageView.image = UIImage(named: "BulbOn")
        }
        imageisOn = !imageisOn
    }
    
   

}
