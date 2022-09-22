//
//  Demo1CollectionViewCell.swift
//  DemoCollectionViewNormal
//
//  Created by Tuấn Anh on 22/09/2022.
//

import UIKit

class Demo1CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var moneyLb: UILabel!
    
    @IBOutlet weak var progressView: UIProgressView!
    var timer: Timer?
    override func awakeFromNib() {
        super.awakeFromNib()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: (1 != 0), block: { _ in
            self.progressView.progress += 0.1
        })
    }

    
    

}
