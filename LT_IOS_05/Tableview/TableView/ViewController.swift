//
//  ViewController.swift
//  TableView
//
//  Created by Tuấn Anh on 16/08/2022.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{
    @IBOutlet weak var myTableview2: UITableView!
    
    @IBOutlet weak var MyTableview: UITableView!
    
    @IBOutlet weak var imageView: UIImageView!
    var array : [String]!
    var array1: [String]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        array = ["Android" , "IOS" , "PHP" , "Apple", "Apple", "Apple", "Apple", "Apple", "Apple", "Apple", "Apple", "Apple", "Apple", "Apple", "Apple", "Apple", "Apple",]
        array1 = ["Bánh","Mì" , "Đây" , "Nè","Abc"]
        
        MyTableview.dataSource = self
        myTableview2.dataSource = self
        
        
        
    }
    @IBAction func ClickedImage(_ sender: UIButton) {
        let UrlString = "https://9mobi.vn/cf/images/2015/03/nkk/hinh-dep-1.jpg"
        
        let url = URL(string: UrlString)
        
        let data = try! Data(contentsOf: url!)
        
        imageView.image = UIImage(data: data)
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView.tag == 0 {
            return array1.count
        }
        if tableView.tag == 1 {
            return array.count
        }
        return 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell")
        if tableView.tag == 0 {
            cell?.textLabel?.text = array1[indexPath.row]
            
        }
        if tableView.tag == 1 {
            cell?.textLabel?.text = array[indexPath.row]
            
        }
        return cell!
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section" + String(section)
    }
    
}


