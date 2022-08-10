//
//  ViewController.swift
//  UItableView
//
//  Created by Tuấn Anh on 02/08/2022.
//

import UIKit
// Bước 1 Tạo Cấu Trúc Menu
struct MenuItem {
    var image : String
    var name : String
    var country : String
}


class ViewController: UIViewController , UITableViewDataSource {
    // bước 2 tạo mục món ăn gồm ( hình ảnh , tên , địa điểm
    let arrayMonAn = [MenuItem(image: "1.jpg", name: "Cơm Cuốn", country: "Hàn Quốc"),
                      MenuItem(image: "2.jpg", name: "Xôi", country: "3 tầng "),
                      MenuItem(image: "3.jpg", name: "Bánh Xèo", country: "Hà nội"),
                      MenuItem(image: "4.jpg", name: "Phở Bò", country: "Nam Định"),
    MenuItem(image: "5.jpg", name: "TÔM XÚ", country: "Đầm Hà")]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
  // bước 3 : thể hiện số hàng trong phần
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayMonAn.count
    }
    // bước 4 : thể hiện ArrayMonĂn vào từng mục trong phần
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell")
        
        let item = arrayMonAn[indexPath.row]
        
        cell?.imageView?.image = UIImage(named: item.image)
        cell?.textLabel?.text = item.name
        cell?.detailTextLabel?.text = item.country
        
        
        
        
        return cell!
    }
    



}

