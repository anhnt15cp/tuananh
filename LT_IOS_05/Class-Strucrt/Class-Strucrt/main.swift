////
////  main.swift
////  Class-Strucrt
////
////  Created by Tuấn Anh on 08/08/2022.
////
//
import Foundation
//
//
//
class Employee {
    // Thuộc tính : Property
    var maNhanVien : String
    var tenNhanVien : String

    // Hàm khởi tạo
    init(maNhanvien : String , tenNhanVien : String) {
        self.maNhanVien = maNhanvien
        self.tenNhanVien = tenNhanVien
    }
    //  Định nghĩa method
    func test (){
        print("Ma nhan vien \(maNhanVien)")
        print("Tên Nhân Viên \(tenNhanVien)")
    }


    func lamViec(congviec : String){
        print("Nhan vien \(self.tenNhanVien) voi ma nhan vien la : \(self.maNhanVien) dang lam \(congviec)")
//
//
//
    }
}
//// nhân viên Đức => object
var nhanVienDuc : Employee = Employee(maNhanvien: "002", tenNhanVien: "Anh")
nhanVienDuc.test()
var nhanVientung = Employee(maNhanvien: "003", tenNhanVien: "Tung")
nhanVientung.test()

var nhanvienDiep = Employee(maNhanvien: "004", tenNhanVien: "Diep")
nhanvienDiep.test()





//struct Employee {
//    var maNhanVien : String
//    var tenNhanVien : String
//    var chucvu : String
//
//    init(maNhanvien : String , tenNhanvien : String , chucvu : String){
//        self.maNhanVien = maNhanvien
//        self.tenNhanVien = tenNhanvien
//        self.chucvu = ""
//    }
//}
//
//var nhanvien = Employee.init(maNhanvien: "10", tenNhanvien: "Anh", chucvu: "IT")
//
//
////var nhanvien = Employee(maNhanVien: "002", tenNhanVien: "Anh", chucvu: "IT")
//print("Ma Nhan Vien : \(nhanvien.maNhanVien)")
//print("tenNhanVien : \(nhanvien.tenNhanVien)")
//print("Chuc Vu : \(nhanvien.chucvu)")
//
//
//struct Book {
//    var tacgia : String
//    var title : String
//
//    func layThongTin()-> String{
//        var result = "Quyen Sach Cua Tac Gia \(self.tacgia) voi tieu de la \(self.title)"
//        return result
//    }
//    func layThongTin2 () ->String {
//        let result = " Quyen sach cua tac gia " + self.tacgia + " voi tieu de la" + self.title
//
//        return result
//    }
//
//}
//
//var lamGiauKhongKho = Book(tacgia: "Nguyen van A", title: "Lam Giau Khong Kho")
//let thongtin = lamGiauKhongKho.layThongTin2()
//print("ket qua : \(thongtin)")
//
////
//
/// Ví dụ về sử dụng class
class Employee {
    var nameEmployee: String
    var numberEmployee: String
    var oldCompany: String
    
    init(name: String, number: String, oldCompany: String) {
        nameEmployee = name
        numberEmployee = number
        self.oldCompany = oldCompany
    }
}

class Company {
    var name: String
    var employees: [Employee]
    
    init(nameCompany: String, employees: [Employee]) {
        name = nameCompany
        self.employees = employees
    }
    
    func tuyenNhanVien(newEmployee: Employee) {
        employees.append(newEmployee)
    }
    
    func xaThaiNhanVien(maNhanVien: String) {
        employees.removeAll { element in
            return element.numberEmployee == maNhanVien
        }
    }
}

/// Cách 1 : Khai báo trực tiếp vào tham số
var techmasterCompany = Company(nameCompany: "Techmaster", employees: [
    Employee(name: "Duc", number: "001", oldCompany: "Viettel"),
    Employee(name: "Quynh", number: "002", oldCompany: "Samsung"),
    Employee(name: "Toan", number: "003", oldCompany: "Google"),
])

print("Số nhân viên trong công ty: \(techmasterCompany.employees.count) nhân viên")

let firstEmployee = techmasterCompany.employees.first
print("Nhân viên \(firstEmployee?.nameEmployee ?? ""): old company \(firstEmployee?.oldCompany ?? "")")


let viettelCompany = Company(nameCompany: "Viettel", employees: [])
print("Số nhân viên trong công ty \(viettelCompany.name): \(viettelCompany.employees.count) nhân viên")

viettelCompany.tuyenNhanVien(newEmployee: Employee(name: "Tuyến", number: "001", oldCompany: ""))
print("Số nhân viên trong công ty \(viettelCompany.name): \(viettelCompany.employees.count) nhân viên")

viettelCompany.xaThaiNhanVien(maNhanVien: "001")
print("Số nhân viên trong công ty \(viettelCompany.name): \(viettelCompany.employees.count) nhân viên")


