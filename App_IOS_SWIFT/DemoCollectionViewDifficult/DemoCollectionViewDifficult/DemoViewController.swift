//
//  DemoViewController.swift
//  DemoCollectionViewDifficult
//
//  Created by Tuấn Anh on 23/09/2022.
//

import UIKit

class DemoViewController: UIViewController, UITableViewDataSource , UITableViewDelegate {
   
    @IBOutlet weak var myTableView1: UITableView!

    var array = [listShopHouse(image: "1", name: "Đồ Dùng Gia Dụng", money: "100.000VND"),
                 listShopHouse(image: "2", name: "Đồ Dùng Gia Dụng", money: "200.000VND"),
                 listShopHouse(image: "3", name: "Đồ Dùng Gia Dụng", money: "300.000VND"),
                 listShopHouse(image: "4", name: "Đồ Dùng Gia Dụng", money: "400.000VND"),
                 listShopHouse(image: "download", name: "Đồ Dùng Gia Dụng", money: "500.000VND"),
                 listShopHouse(image: "download-1", name: "Đồ Dùng Gia Dụng", money: "600.000VND"),
                 listShopHouse(image: "download-2", name: "Đồ Dùng Gia Dụng", money: "700.000VND"),
                 listShopHouse(image: "download-3", name: "Đồ Dùng Gia Dụng", money: "800.000VND"),]
    var selected: listShopHouse?
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
        let back = UIContextualAction(style: .normal, title: "Back") { acction, view, complete in
            self.dismiss(animated: true)
        }
        back.backgroundColor = .blue
        let buy = UIContextualAction(style: .normal, title: "Buy") { acction, view, complete in
            self.array.remove(at: indexPath.row)
            self.myTableView1.reloadData()
            
        }
        
        let swipe = UISwipeActionsConfiguration(actions: [back,buy])
        return swipe
     }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let demo2VC = storyboard.instantiateViewController(withIdentifier: "Demo2ViewController") as? Demo2ViewController
        demo2VC!.modalTransitionStyle = .flipHorizontal
        demo2VC!.modalPresentationStyle = .fullScreen
        selected = array[indexPath.row]
        demo2VC?.item = selected
        
        present(demo2VC!, animated: true)
       
        
    }
    }
  
