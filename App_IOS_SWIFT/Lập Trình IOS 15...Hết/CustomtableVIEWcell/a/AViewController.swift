//
//  AViewController.swift
//  a
//
//  Created by Tuấn Anh on 19/08/2022.
//

import UIKit

class AViewController: UIViewController {
    @IBOutlet weak var country: UILabel!
    
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var item: MenuItem?
    override func viewDidLoad() {
        super.viewDidLoad()
      
        imageView.image = UIImage(named: item!.image)
        Name.text = item?.name
        country.text = item?.conutry
       
    }
    

    @IBAction func Back(_ sender: UIButton) {
        
        self.dismiss(animated: true )
    }
    

}
