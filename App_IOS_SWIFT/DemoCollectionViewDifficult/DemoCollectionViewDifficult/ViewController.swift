//
//  ViewController.swift
//  DemoCollectionViewDifficult
//
//  Created by Tuấn Anh on 22/09/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var minutesLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var myTableView: UITableView!
    var timer: Timer?
    let array = [nameSecction(name: "Tìm Kiếm Hàng Đầu"),
                 nameSecction(name: "Hàng Được Yêu Thích Nhất"),
                 nameSecction(name: "Giá Rẻ"),
                 nameSecction(name: "Hàng Còn Tồn Kho Nhiều"),
                 nameSecction(name: "Hàng Sắp Hết Hạn"),]
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        let nib = UINib.init(nibName: "CollectionTableViewCell", bundle: nil)
        myTableView.register(nib, forCellReuseIdentifier: "CollectionTableViewCell")
        getTimer()
        getCurrentTime()
        myTableView.delegate = self
        
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
    
    
}
extension ViewController: UITableViewDataSource , UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CollectionTableViewCell", for: indexPath) as? CollectionTableViewCell
        let item = array[indexPath.item]
        cell?.nameSectionLb.text = item.name
        return cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        350
    }
}
