//
//  ViewController.swift
//  CustomtableViewcell
//
//  Created by Tuấn Anh on 02/08/2022.
//

import UIKit

struct MenuItem {
    var image : String
    var name : String
    var country : String
}
class ViewController: UIViewController , UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    let arrayMonAn = [MenuItem(image: "1.jpg", name: "Cơm Cuốn", country: "Hàn Quốc"),
                      MenuItem(image: "2.jpg", name: "Xôi", country: "3 tầng "),
                      MenuItem(image: "3.jpg", name: "Bánh Xèo", country: "Hà nội"),
                      MenuItem(image: "4.jpg", name: "Phở Bò", country: "Nam Định"),
    MenuItem(image: "5.jpg", name: "TÔM XÚ", country: "Đầm Hà")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayMonAn.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell")as! TableViewCell
        let item = arrayMonAn[indexPath.item]
        cell.contentImage.image = UIImage(named: item.image)
        cell.name.text = item.name
        cell.country.text = item.country
        
        
        return cell
    }
    }




