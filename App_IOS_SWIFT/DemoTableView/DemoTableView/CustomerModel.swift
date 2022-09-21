//
//  CustomerModel.swift
//  DemoTableView
//
//  Created by Tuấn Anh on 20/09/2022.
//

import UIKit

class CustomerModel: NSObject {
    var hoVaTen: String = ""
    var tinhThanhPho: String = ""
    var soDienThoai: String = ""
    var gioiTinh: String = ""
    var loaiKhachHang: String = ""
    var tuoiKhachHang: String = ""
    
    init(hoVaTen: String ,tinhThanhPho: String,soDienThoai: String, gioiTinh: String, loaiKhachHang: String, tuoiKhachHang: String) {
        self.hoVaTen = hoVaTen
        self.tinhThanhPho = tinhThanhPho
        self.soDienThoai = soDienThoai
        self.gioiTinh = gioiTinh
        self.loaiKhachHang = loaiKhachHang
        self.tuoiKhachHang = tuoiKhachHang
    }
}
