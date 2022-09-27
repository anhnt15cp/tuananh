//
//  CollectionTableViewCell.swift
//  DemoCollectionViewDifficult
//
//  Created by Tuấn Anh on 22/09/2022.
//

import UIKit

class CollectionTableViewCell: UITableViewCell {
    @IBOutlet weak var myCollectionView: UICollectionView!
    @IBOutlet weak var nameSectionLb: UILabel!
    
    var shopHouse1: [Shoppe] = []
    var shopHouse2: [Shoppe] = []
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        getData()
        getdata1()
        setupCollection()
        let nib = UINib.init(nibName: "CollectionViewCell", bundle: nil)
        myCollectionView.register(nib, forCellWithReuseIdentifier: "CollectionViewCell")
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
    func getdata1() {
        let used1 = Shoppe(image: "1", name: "30.000VND")
        let used2 = Shoppe(image: "2", name: "40.000VND")
        let used3 = Shoppe(image: "3", name: "50.000VND")
        let used4 = Shoppe(image: "4", name: "60.000VND")
        
        
        shopHouse2.append(contentsOf: [used1,used2,used3,used4])
//        myCollectionView.reloadData()
        
    }
    func getData() {
        let used1 = Shoppe(image: "download", name: "30.000VND")
        let used2 = Shoppe(image: "download-1", name: "40.000VND")
        let used3 = Shoppe(image: "download-2", name: "50.000VND")
        let used4 = Shoppe(image: "download-3", name: "60.000VND")
        let used5 = Shoppe(image: "download", name: "70.000VND")
        
        shopHouse1.append(contentsOf: [used1,used2,used3,used4,used5])
//        myCollectionView.reloadData()
    }
    
}

extension CollectionTableViewCell: UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        
        if section == 0 {
            return shopHouse1.count
        } else {
            return shopHouse2.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if (indexPath.section) == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
            cell.configure(withModel: shopHouse1[indexPath.row])
            return cell
        }
        else
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
            cell.configure(withModel: shopHouse2[indexPath.row])
            return cell
        }
        
    }
}
