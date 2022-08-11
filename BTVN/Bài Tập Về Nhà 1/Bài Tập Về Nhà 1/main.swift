//
//  main.swift
//  Bài Tập Về Nhà 1
//
//  Created by Tuấn Anh on 09/08/2022.
//Ta sẽ làm một bài toán quản lý sinh viên (Bài toán kinh điển của sinh viên bách khoa)

//Hãy xây dựng một chương trình quản lý sinh viên trong lớp học.
//
//Mồi lớp học bắt buộc có tên lớp, tên giáo viên chủ nhiệm và danh sách các bạn sinh viên trong lớp.
//
//Mồi sinh viên bắt buộc có tên, tuổi và có thể có số điện thoại.
//
//Giả sử ta có một lớp tên Techmaster với cô chủ nhiệm Quỳnh
//
//Hãy viết các chức năng sau:
//
//Chỉnh sửa tên giáo viên thành “Quỳnh Teacher”.
//
//Thêm lần lượt 10 sinh viên sau (Nam, Hoàng, Linh, Huyền, Đức, Dương, Tùng, Bằng, Bắc, Thanh) vào lớp, trong đó có 5 sinh viên không có số điện thoại.
//
//Tìm sinh viên có tên “Nam” và đổi tên thành “Đông”, in ra thông báo thành công hoặc thất bại
//
//Tìm sinh viên có tên “Bá” và đổi tên thành “Đông”, in ra thông báo thành công hoặc thất bại
//
//Xoá sinh viên có tên “Đức”, “Lan”, in ra thông báo thành công hoặc thất bại
//
//In ra thông tin của lớp học: Tên lớp, tên giáo viên, và danh sách sinh viên trong lớp (in ra thông tin tên, tuổi và số điẹn thoại nếu có)
//
//Gợi ý:
//
//Ta có 2 class: Lớp học và Sinh viên
//
//Trong lớp học nên có các hàm sau: Thêm một sinh viên (tên:String, tuổi:Int, số điện thoại:String?), Update tên giáo viên (tên mới: String), tìm sinh viên theo tên (tên:String), Xoá sinh viên theo tên : (tên:String) -> Sinh viên, Update sinh viên theo tên(tên:String)
//
//Sinh viên có hàm get info để in ra thông tin tên, tuổi và số điẹn thoại nếu có

import Foundation

print("Hello, World!")
class sinhVien {
    var ten : String = ""
    var tuoi : String = ""
    var sdt : String = ""

    init ( ten : String , tuoi : String , sdt : String){
        self.ten = ten
        self.tuoi = tuoi
        self.sdt = sdt
    }

}

class lopHoc {
    var tenLop : String = ""
    var tenGVCN : String
    var sinhvien1 : [sinhVien]

    init(tenLop : String , tenGVCN : String , sinhvien2 : [sinhVien]){
        self.tenLop = tenLop
        self.tenGVCN = tenGVCN
        self.sinhvien1 = sinhvien2
    }
//
    func timsinhvien(name:String)->sinhVien?{
        if let sv = self.sinhvien1.first(where: {$0.ten == name}){
            return sv
        }else{
           print("Không tìm thấy tên SV")
            return nil
        }
    }

    func updateSinhvien(name:String,newName:String?, newAge:String?, newPhone:String?)->sinhVien?{
        if let sv = self.sinhvien1.first(where: {$0.ten == name}){
            if let name = newName{
                sv.ten = name
            }
            if let phone = newPhone{
                sv.sdt = phone
            }
            if let age = newAge{
                sv.tuoi = age
            }
            return sv
        }else{
           print("Không tìm thấy tên SV")
            return nil
        }
    }
    func xaThaiSinhVien(name : String){
        sinhvien1.removeAll { students in
            return students.ten == name
        }
    }
    func moreSinhVien (newSinhVien : sinhVien ){
        sinhvien1.append(newSinhVien)
    }
    func newNameGV (newNameGV : String){
        self.tenGVCN = newNameGV
    }

    }

var newLopHoc = lopHoc.init(tenLop: "TechMaster", tenGVCN: "Quỳnh Teacher", sinhvien2: [sinhVien(ten: "Nam", tuoi: "18", sdt: "0900"),
                                                                                          sinhVien(ten: "Hoàng", tuoi: "18", sdt: "0900"),
                                                                                          sinhVien(ten: "Linh", tuoi: "18", sdt: "0900"),
                                                                                          sinhVien(ten: "Huyền", tuoi: "18", sdt: "0900"),
                                                                                          sinhVien(ten: "Đức", tuoi: "18", sdt: "0900"),
                                                                                          sinhVien(ten: "Dương", tuoi: "18", sdt: ""),
                                                                                          sinhVien(ten: "Tùng", tuoi: "18", sdt: ""),
                                                                                          sinhVien(ten: "Bằng", tuoi: "18", sdt: ""),
                                                                                          sinhVien(ten: "Bắc", tuoi: "18", sdt: ""),
                                                                                          sinhVien(ten: "Thanh", tuoi: "18", sdt: ""),])


print("Tên Lớp Học Là : \(newLopHoc.tenLop)")
print("Tên GVCN là : \(newLopHoc.tenGVCN)")
for sinhvien in newLopHoc.sinhvien1 {
    print("Tên Các Sinh Viên là : \(sinhvien.ten) , Tuổi là : \(sinhvien.tuoi) , SDT là : \(sinhvien.sdt) ")
}
var soSinhVien = newLopHoc.sinhvien1.count
print("Co Tat Ca So Sinh Vien la : \(soSinhVien)")

let svtenNam = newLopHoc.timsinhvien(name: "Nam")
print(svtenNam?.ten)

let svThanh = newLopHoc.updateSinhvien(name: "Thanh", newName: "Đông", newAge: "22", newPhone: "98988989")
 print(svThanh?.sdt,svThanh?.ten,svThanh?.tuoi)

let newTeacher = lopHoc.init(tenLop: "", tenGVCN: "Trang", sinhvien2: [])
print("Giáo viên mới tên là :\(newTeacher.tenGVCN)")

let xathaiSinhVien = newLopHoc.xaThaiSinhVien(name: "Thanh")
print("Số sinh viên trong lớp học \(newLopHoc.tenLop) : \(newLopHoc.sinhvien1.count) sinh viên")

let moreSinhVien = newLopHoc.moreSinhVien(newSinhVien: sinhVien(ten: "Luyện", tuoi: "19", sdt: "0900"))
print("Số sinh viên trong lớp học \(newLopHoc.tenLop) : \(newLopHoc.sinhvien1.count) sinh viên ")

newTeacher.newNameGV(newNameGV: "Trang Teacher")
print(newTeacher.tenGVCN)

