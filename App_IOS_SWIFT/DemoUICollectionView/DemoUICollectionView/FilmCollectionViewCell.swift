//
//  FilmCollectionViewCell.swift
//  DemoUICollectionView
//
//  Created by Tuấn Anh on 21/09/2022.
//

import UIKit

class FilmCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var filmImage: UIImageView!
    @IBOutlet weak var filmNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

    func bindData(name: String, imageName: String) {
        filmImage.image = UIImage(named: imageName)
        filmNameLabel.text = name
    }
    
    func bindData(film: PhimModel){
        if let image = film.image {
            filmImage.image = UIImage(named: image)
        }else {
            filmImage.image = nil
        }
        if let name = film.name {
            filmNameLabel.text = name
        }else {
            filmNameLabel.text = nil
        }
    }
}
