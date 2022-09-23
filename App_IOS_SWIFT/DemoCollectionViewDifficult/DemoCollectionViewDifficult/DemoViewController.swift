//
//  DemoViewController.swift
//  DemoCollectionViewDifficult
//
//  Created by Tuấn Anh on 23/09/2022.
//

import UIKit

class DemoViewController: UIViewController, UITableViewDataSource , UITableViewDelegate {
   
    @IBOutlet weak var myTableView1: UITableView!
    struct listShopHouse {
        var image: String = ""
        var name: String = ""
        var money: String = ""
    }
    let array = [listShopHouse(image: "1", name: "Đồ Dùng Gia Dụng", money: "100.000VND"),
                 listShopHouse(image: "2", name: "Đồ Dùng Gia Dụng", money: "200.000VND"),
                 listShopHouse(image: "3", name: "Đồ Dùng Gia Dụng", money: "300.000VND"),
                 listShopHouse(image: "4", name: "Đồ Dùng Gia Dụng", money: "400.000VND"),
                 listShopHouse(image: "download", name: "Đồ Dùng Gia Dụng", money: "500.000VND"),
                 listShopHouse(image: "download-1", name: "Đồ Dùng Gia Dụng", money: "600.000VND"),
                 listShopHouse(image: "download-2", name: "Đồ Dùng Gia Dụng", money: "700.000VND"),
                 listShopHouse(image: "download-3", name: "Đồ Dùng Gia Dụng", money: "800.000VND"),]
   
    override func viewDidLoad() {
        super.viewDidLoad()

        myTableView1.dataSource = self
        myTableView1.delegate = self
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoViewControllerCell")
        let list = array[indexPath.row]
        
        cell?.textLabel?.text = list.name
        cell?.detailTextLabel?.text = list.money
        cell?.imageView?.image = UIImage(named: list.image)
        return cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
      130
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let edit = UIContextualAction(style: .normal, title: "Edit") { acction, view, complete in
            self.dismiss(animated: true)
        }
        edit.backgroundColor = .blue
        let swipe = UISwipeActionsConfiguration(actions: [edit])
        return swipe
     }
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Đồ Dùng Gia Đình"
//    }
    }
  
