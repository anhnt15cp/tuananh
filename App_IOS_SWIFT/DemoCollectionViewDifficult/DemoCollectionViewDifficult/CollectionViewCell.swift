//
//  CollectionViewCell.swift
//  DemoCollectionViewDifficult
//
//  Created by Tuấn Anh on 22/09/2022.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var timerView: UIProgressView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
     
    }
    
    
    func configure(withModel: Shoppe) {
        if let image = withModel.image {
            imageView.image = UIImage(named: image)
        }else {
            imageView.image = nil
        }
        if let name = withModel.name {
            moneyLabel.text = name
        }else {
            moneyLabel.text = nil
        }
    
    }
}
