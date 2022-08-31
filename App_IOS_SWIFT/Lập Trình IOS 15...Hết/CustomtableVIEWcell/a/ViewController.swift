//
//  ViewController.swift
//  a
//
//  Created by Tuấn Anh on 19/08/2022.
//

import UIKit
struct MenuItem {
    var name: String = ""
    var conutry: String = ""
    var image: String = ""
     
//    init(name: String , conutry: String , image: String){
//        self.name = name
//        self.conutry = conutry
//        self.image = image
    
    }
    

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{
    
    
    let array = [ MenuItem(name: "Bánh Xèo", conutry: "Việt Nam ", image: "1.jpg"),
                  MenuItem(name: " Cá Hồi", conutry: "Mỹ ", image: "2.jpg"),
                  MenuItem(name: "Sườn Nướng", conutry: "Việt Nam ", image: "3.jpg"),
                  MenuItem(name: "Mẹt ", conutry: "Việt Nam ", image: "4.jpg"),
                  MenuItem(name: "Bánh Kẹp", conutry: "Việt Nam ", image: "5.jpg"),]
    
                  
    var selectecd: MenuItem?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? AViewController {
            controller.item = selectecd
            
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Selection" + String(section)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        array.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell")
        
        let item = array[indexPath.item]
        cell?.textLabel?.text = item.name
        cell?.imageView?.image = UIImage(named: item.image)
        cell?.detailTextLabel?.text = item.conutry
        
        return cell!
        
        
     
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectecd = array[indexPath.item]
        self.performSegue(withIdentifier: "mySTRB", sender: nil)
    }
    
 
}

