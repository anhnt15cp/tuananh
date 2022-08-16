//
//  ViewController.swift
//  TableView
//
//  Created by Tuấn Anh on 16/08/2022.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource {
    @IBOutlet weak var myTableview2: UITableView!
    
    @IBOutlet weak var MyTableview: UITableView!
    
    var array : [String]!
    var array1: [String]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        array = ["Android" , "IOS" , "PHP" , "Apple"]
        array1 = ["Bánh","Mì" , "Đây" , "Nè","Abc"]
        
        MyTableview.dataSource = self
        myTableview2.dataSource = self
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        1
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


