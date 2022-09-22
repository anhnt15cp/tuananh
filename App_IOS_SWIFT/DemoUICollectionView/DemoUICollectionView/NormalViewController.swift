//
//  NormalViewController.swift
//  DemoUICollectionView
//
//  Created by Tuấn Anh on 21/09/2022.
//

import UIKit

class NormalViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var listFilmDataSoure: [PhimModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        loadFilmData()
    }
    
    func setupCollectionView() {
        collectionView.dataSource = self
            collectionView.delegate = self
        let nib = UINib.init(nibName: "FilmCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "FilmCollectionViewCell")
        
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .vertical
            layout.minimumLineSpacing = 5
            layout.minimumInteritemSpacing = 5
            layout.estimatedItemSize = .zero
            layout.itemSize = CGSize(width: (UIScreen.main.bounds.width - 10)/3, height: 100) // Dòng này sét để Collectionview ăn itemSize
        }
        
        
    }
    func loadFilmData() {
        // Lấy data từ một nguồn nào
        let phim1 = PhimModel(image: "1", name: "Phim1")
        let phim2 = PhimModel(image: "2", name: "Phim2")
        let phim3 = PhimModel(image: "3", name: "Phim3")
        let phim4 = PhimModel(image: "4", name: "Phim4")
        // Add nhiều phần tử vào mảng 1 lúc
        listFilmDataSoure.append(contentsOf: [phim1,phim2,phim3,phim4,phim1,phim2,phim3,phim4,phim1,phim2,phim3,phim4])
        
        // Reload lại để hiển thị data mới cập nhập lên UI
        collectionView.reloadData()
    }
    
}
extension NormalViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listFilmDataSoure.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FilmCollectionViewCell", for: indexPath)as? FilmCollectionViewCell
        
        let film = listFilmDataSoure[indexPath.item]
        
        cell?.bindData(film: film)
        
        return cell!
        
    }
    
    
    
}
extension NormalViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 100, height: 100)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Abc")
        
        listFilmDataSoure.remove(at: indexPath.row)// Xóa item
        listFilmDataSoure.append(PhimModel(image: "nil", name: "Hello")) // Thêm item
        listFilmDataSoure[indexPath.row].name = " Hello" // Sửa item
//        collectionView.deleteItems(at: [indexPath])
        collectionView.reloadData() // reloadData
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ViewController")
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
