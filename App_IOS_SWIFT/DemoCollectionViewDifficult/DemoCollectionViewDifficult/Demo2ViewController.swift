//
//  Demo2ViewController.swift
//  DemoCollectionViewDifficult
//
//  Created by Tuấn Anh on 23/09/2022.
//

import UIKit

class Demo2ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    
    var item: listShopHouse?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        config(withModel: item!)
        
    }
    func config(withModel: listShopHouse) {
        imageView.image = UIImage(named: withModel.image)
        nameLabel.text = withModel.name
        moneyLabel.text = withModel.money
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    
    
}
