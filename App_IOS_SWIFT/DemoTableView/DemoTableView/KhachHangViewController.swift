//
//  KhachHangViewController.swift
//  DemoTableView
//
//  Created by Tuấn Anh on 20/09/2022.
//

import UIKit

class KhachHangViewController: UIViewController, UITableViewDataSource , UITableViewDelegate {
   
    
    @IBOutlet weak var myTableView: UITableView!
   
    
    let customerModel: [CustomerModel] = []
    
    var khachHang: String = ""
    var tinhThanhPho: String = ""
    var soDienThoai: String = ""
    var gioiTinh: String = ""
    var loaiKhachHang: String = ""
    var tuoiKhachHang: String = ""
  
    @objc let refesh = UIRefreshControl()
    
    var handleback : (()-> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib1 = UINib.init(nibName: "ABCTableViewCell", bundle: nil)
        myTableView.register(nib1, forCellReuseIdentifier: "mycell1")
        
        let nib = UINib.init(nibName: "KhachHangTableViewCell", bundle: nil)
        myTableView.register(nib, forCellReuseIdentifier: "mycell")
        myTableView.dataSource = self
        myTableView.delegate = self
        myTableView.separatorStyle = .none
        myTableView.bounces = true
        
        
        refesh.addTarget(self, action: #selector(refeshData), for: .valueChanged)
        myTableView.refreshControl = refesh
        
    }
    @objc func refeshData() {
        DispatchQueue.main.asyncAfter(deadline: .now()+3) {
            self.refesh.endRefreshing()
           
        }
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true)
        self.handleback!()
 
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath) as? KhachHangTableViewCell
//        let item = CustomerModel(hoVaTen: "\(khachHang)", tinhThanhPho: "\(tinhThanhPho)", soDienThoai: "\(soDienThoai)", gioiTinh: "\(gioiTinh)", loaiKhachHang: "\(loaiKhachHang)", tuoiKhachHang: "\(tuoiKhachHang)")
//        let item = customerModel[indexPath.row]
        
        
        cell?.nameLabel.text = "Họ Và Tên : \(khachHang)"
        cell?.cityLabel.text = "Tỉnh Và Thành Phố : \(tinhThanhPho)"
        cell?.phoneNumberLabel.text = "Số Điện Thoại : \(soDienThoai)"
        cell?.genDer.text = "Giới Tính : \(gioiTinh)"
        cell?.typeLabel.text = "Loại Khách Hàng : \(loaiKhachHang)"
        cell?.ageLabel.text = "Tuổi Khách Hàng : \(khachHang)"
      
        
        
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("")
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let edit = UIContextualAction(style: .normal, title: "Edit") { acction, view, complete in
            print("Edit")
            
            self.dismiss(animated:true)
        }
        edit.backgroundColor = .blue
        let delete = UIContextualAction(style: .normal, title: "Delete") { acction,view, complete in
            
            
            self.khachHang = "" ; self.tinhThanhPho = "" ; self.soDienThoai = "" ; self.gioiTinh = "" ; self.loaiKhachHang = "" ; self.tuoiKhachHang = ""
            tableView.reloadData()
            print("deleta")
        }
        delete.backgroundColor = .red
        
        let swipe = UISwipeActionsConfiguration(actions: [edit,delete])
        
        return swipe
    }
//    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
//        return  "Bạn Đã Đăng Ký Thành Công"
//    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return " Bạn Đã Dăng Ký Thành Công"
    }
    
    
}
