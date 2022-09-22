//
//  CollectionTableViewCell.swift
//  DemoCollectionViewDifficult
//
//  Created by Tuấn Anh on 22/09/2022.
//

import UIKit

class CollectionTableViewCell: UITableViewCell {
    @IBOutlet weak var myCollectionView: UICollectionView!
    var shopHouse1: [shopHouse] = []
  
    
  
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCollection()
        let nib = UINib.init(nibName: "CollectionViewCell", bundle: nil)
        myCollectionView.register(nib, forCellWithReuseIdentifier: "CollectionViewCell")
        getData()
    }
    func setupCollection() {
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        let layout = myCollectionView.collectionViewLayout as? UICollectionViewFlowLayout
        layout?.minimumLineSpacing = 0
        layout?.minimumInteritemSpacing = 0
        layout?.estimatedItemSize = .zero
        layout?.itemSize = CGSize(width: myCollectionView.bounds.width, height: myCollectionView.bounds.height)
        layout?.scrollDirection = .horizontal

    }

    func getData() {
        let used1 = shopHouse(image: "download", name: "30.000VND")
        let used2 = shopHouse(image: "download-1", name: "40.000VND")
        let used3 = shopHouse(image: "download-2", name: "50.000VND")
        let used4 = shopHouse(image: "download-3", name: "60.000VND")
        let used5 = shopHouse(image: "download", name: "70.000VND")

        shopHouse1.append(contentsOf: [used1,used2,used3,used4,used5])
        myCollectionView.reloadData()
    }
    
}

extension CollectionTableViewCell: UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return shopHouse1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell

        
        cell?.configure(withModel: shopHouse1[indexPath.row])
        
        return cell!

}
}
