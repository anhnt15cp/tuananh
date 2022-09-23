//
//  ViewController.swift
//  DemoCollectionViewNormal
//
//  Created by Tuấn Anh on 22/09/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var minutesLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var myCollectionView1: UICollectionView!
    @IBOutlet weak var myCollectionView2: UICollectionView!
    
    var listShopHouse = [shopHouse]()
    var lisShopHouse2 = [shopHouse1]()
    var timer: Timer?
    override func viewDidLoad() {
        super.viewDidLoad()
        getTimer()
        getCurrentTime()
        setUpCollectionView1()
        getData()
        let nib = UINib.init(nibName: "Demo1CollectionViewCell", bundle: nil)
        myCollectionView1.register(nib, forCellWithReuseIdentifier: "Demo1CollectionViewCell")
        let nib1 = UINib.init(nibName: "Demo2CollectionViewCell", bundle: nil)
        myCollectionView2.register(nib1, forCellWithReuseIdentifier: "Demo2CollectionViewCell")
        
    }
    
    
    func getTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
            self.getCurrentTime()
           
        })
    }
    func getCurrentTime() {
        let date = Date()
        let calender = Calendar.current
        
        let components = calender.dateComponents([.hour,.minute,.second], from: date)
        
        guard let hour = components.hour,
              let minutes = components.minute,
              let second = components.second  else{
            print("Cannot current time")
            return
        }
        hourLabel.text = "\(hour)"
        minutesLabel.text = minutes < 10 ? "0\(minutes)" : "\(minutes)"
        secondLabel.text = second < 10 ? "0\(second)" : "\(second)"
        hourLabel.textColor = .white
        minutesLabel.textColor = .white
        secondLabel.textColor = .white
        
    }
    func setUpCollectionView1() {
        myCollectionView1.dataSource = self
        myCollectionView1.isPagingEnabled = true
        myCollectionView2.dataSource = self
       if let layout = myCollectionView1.collectionViewLayout as? UICollectionViewFlowLayout {
           
           layout.minimumInteritemSpacing = 0
           layout.minimumLineSpacing = 0
           layout.scrollDirection = .horizontal
           layout.estimatedItemSize = .zero
           layout.itemSize = CGSize(width: myCollectionView1.bounds.width, height: myCollectionView1.bounds.height)
        
        }
        
    }
    func getData() {
        let used1 = shopHouse(image: "download", money: "30.000")
        let used2 = shopHouse(image: "download-1", money: "40.000")
        let used3 = shopHouse(image: "download-2", money: "50.000")
        let used4 = shopHouse(image: "download-3", money: "60.000")
       
        listShopHouse.append(contentsOf: [used1,used2,used3,used4])
        myCollectionView1.reloadData()
    }
    
}
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 0 {
            listShopHouse.count
        }
        if collectionView.tag == 1 {
            lisShopHouse2.count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Demo1CollectionViewCell", for: indexPath) as? Demo1CollectionViewCell
        if collectionView.tag == 0 {
            let item = listShopHouse[indexPath.row]
            
            cell?.imageView.image = UIImage(named: item.image)
            cell?.moneyLb.text = item.money
        }
        if collectionView.tag == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Demo2CollectionViewCell", for: indexPath) as? Demo2CollectionViewCell
            let item = lisShopHouse2[indexPath.row]
            cell?.imageView2.image = UIImage(named: item.image!)
            cell?.money2Label.text = item.name
        
        }
       
        
        return cell!
    }
    
    
    
    
}
