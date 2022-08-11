////
////  main.swift
////  Bài Tập Về Nhà 1
////
////  Created by Tuấn Anh on 09/08/2022.
////Ta sẽ làm một bài toán quản lý sinh viên (Bài toán kinh điển của sinh viên bách khoa)
//
////Hãy xây dựng một chương trình quản lý sinh viên trong lớp học.
////
////Mồi lớp học bắt buộc có tên lớp, tên giáo viên chủ nhiệm và danh sách các bạn sinh viên trong lớp.
////
////Mồi sinh viên bắt buộc có tên, tuổi và có thể có số điện thoại.
////
////Giả sử ta có một lớp tên Techmaster với cô chủ nhiệm Quỳnh
////
////Hãy viết các chức năng sau:
////
////Chỉnh sửa tên giáo viên thành “Quỳnh Teacher”.
////
////Thêm lần lượt 10 sinh viên sau (Nam, Hoàng, Linh, Huyền, Đức, Dương, Tùng, Bằng, Bắc, Thanh) vào lớp, trong đó có 5 sinh viên không có số điện thoại.
////
////Tìm sinh viên có tên “Nam” và đổi tên thành “Đông”, in ra thông báo thành công hoặc thất bại
////
////Tìm sinh viên có tên “Bá” và đổi tên thành “Đông”, in ra thông báo thành công hoặc thất bại
////
////Xoá sinh viên có tên “Đức”, “Lan”, in ra thông báo thành công hoặc thất bại
////
////In ra thông tin của lớp học: Tên lớp, tên giáo viên, và danh sách sinh viên trong lớp (in ra thông tin tên, tuổi và số điẹn thoại nếu có)
////
////Gợi ý:
////
////Ta có 2 class: Lớp học và Sinh viên
////
////Trong lớp học nên có các hàm sau: Thêm một sinh viên (tên:String, tuổi:Int, số điện thoại:String?), Update tên giáo viên (tên mới: String), tìm sinh viên theo tên (tên:String), Xoá sinh viên theo tên : (tên:String) -> Sinh viên, Update sinh viên theo tên(tên:String)
////
////Sinh viên có hàm get info để in ra thông tin tên, tuổi và số điẹn thoại nếu có
//
//import Foundation
//
//print("Hello, World!")
//class sinhVien {
//    var ten : String = ""
//    var tuoi : String = ""
//    var sdt : String = ""
//
//    init ( ten : String , tuoi : String , sdt : String){
//        self.ten = ten
//        self.tuoi = tuoi
//        self.sdt = sdt
//    }
//
//}
//
//class lopHoc {
//    var tenLop : String = ""
//    var tenGVCN : String
//    var sinhvien1 : [sinhVien]
//
//    init(tenLop : String , tenGVCN : String , sinhvien2 : [sinhVien]){
//        self.tenLop = tenLop
//        self.tenGVCN = tenGVCN
//        self.sinhvien1 = sinhvien2
//    }
////
//    func timsinhvien(name:String)->sinhVien?{
//        if let sv = self.sinhvien1.first(where: {$0.ten == name}){
//            return sv
//        }else{
//           print("Không tìm thấy tên SV")
//            return nil
//        }
//    }
//
//    func updateSinhvien(name:String,newName:String?)->sinhVien?{
//        if let sv = self.sinhvien1.first(where: {$0.ten == name}){
//            if let name = newName{
//                sv.ten = name
//            }
//
//            return sv
//        }else{
//           print("Không tìm thấy tên SV")
//            return nil
//        }
//    }
//    func xaThaiSinhVien(name : String){
//        sinhvien1.removeAll { students in
//            return students.ten == name
//        }
//    }
//    func moreSinhVien (newSinhVien : sinhVien ){
//        sinhvien1.append(newSinhVien)
//    }
//    func newNameGV (newNameGV : String){
//        self.tenGVCN = newNameGV
//    }
//
//    }
//
//var newLopHoc = lopHoc.init(tenLop: "TechMaster", tenGVCN: "Quỳnh Teacher", sinhvien2: [sinhVien(ten: "Nam", tuoi: "18", sdt: "0900"),
//                                                                                          sinhVien(ten: "Hoàng", tuoi: "18", sdt: "0900"),
//                                                                                          sinhVien(ten: "Linh", tuoi: "18", sdt: "0900"),
//                                                                                          sinhVien(ten: "Huyền", tuoi: "18", sdt: "0900"),
//                                                                                          sinhVien(ten: "Đức", tuoi: "18", sdt: "0900"),
//                                                                                          sinhVien(ten: "Dương", tuoi: "18", sdt: ""),
//                                                                                          sinhVien(ten: "Tùng", tuoi: "18", sdt: ""),
//                                                                                          sinhVien(ten: "Bằng", tuoi: "18", sdt: ""),
//                                                                                          sinhVien(ten: "Bắc", tuoi: "18", sdt: ""),
//                                                                                          sinhVien(ten: "Thanh", tuoi: "18", sdt: ""),])
//
//
//print("Tên Lớp Học Là : \(newLopHoc.tenLop)")
//print("Tên GVCN là : \(newLopHoc.tenGVCN)")
//for sinhvien in newLopHoc.sinhvien1 {
//    print("Tên Các Sinh Viên là : \(sinhvien.ten) , Tuổi là : \(sinhvien.tuoi) , SDT là : \(sinhvien.sdt) ")
//}
//var soSinhVien = newLopHoc.sinhvien1.count
//print("Co Tat Ca So Sinh Vien la : \(soSinhVien)")
//
//let svtenNam = newLopHoc.timsinhvien(name: "Nam")
//print(svtenNam?.ten)
//
//let svThanh = newLopHoc.updateSinhvien(name: "Nam", newName: "Hoàng")
//print(svThanh?.ten)
//
//let newTeacher = lopHoc.init(tenLop: "", tenGVCN: "Trang", sinhvien2: [])
//print("Giáo viên mới tên là :\(newTeacher.tenGVCN)")
//
//let xathaiSinhVien = newLopHoc.xaThaiSinhVien(name: "Thanh")
//print("Số sinh viên trong lớp học \(newLopHoc.tenLop) : \(newLopHoc.sinhvien1.count) sinh viên")
//
//let moreSinhVien = newLopHoc.moreSinhVien(newSinhVien: sinhVien(ten: "Luyện", tuoi: "19", sdt: "0900"))
//print("Số sinh viên trong lớp học \(newLopHoc.tenLop) : \(newLopHoc.sinhvien1.count) sinh viên ")
//
//newTeacher.newNameGV(newNameGV: "Trang Teacher")
//print(newTeacher.tenGVCN)
//
import Foundation
// Chương trình quản lý sinh viên

class sinhvien{
     var tenSV:String
     var tuoi:Int
     var sdt:String
     init(tenSV:String, tuoi:Int, sdt:String){
      self.tenSV = tenSV
      self.tuoi = tuoi
      self.sdt = sdt
     }
    func getInfo(){
      print("\(tenSV) \(tuoi) \(sdt)")
   
    }
    

}
class lopHoc{
  var tenLop:String
  var  tenGV:String
  var dsLop: [sinhvien] = []
  init(tenLop:String, tenGV:String, dsLop: [sinhvien]){
    self.tenLop = tenLop
    self.tenGV = tenGV
    self.dsLop = dsLop
  }
  func updateGV(tenMoi:String){
         tenGV = tenMoi
  }
   func updateSV(tenSVTim:String){
           for sv in dsLop {
          if(sv.tenSV == tenSVTim){
             sv.tenSV = "Đông"
          }
         }
    }
    func timSV(tenSVTim:String)->Bool{
        for sv in dsLop {
          if(sv.tenSV == tenSVTim){
             return true
          }
         }
         return false
    }
     func xoaSV(tenSVTim:String){
         for (index, value) in dsLop.enumerated() {
             if(value.tenSV == tenSVTim){
            dsLop.remove(at: index)
            }
          }
      }

}
  var ds: [sinhvien] = []
  ds.append(sinhvien(tenSV:"Tuan",tuoi:25,sdt:"0459679485"))
  ds.append(sinhvien(tenSV:"Hung",tuoi:22,sdt:"0459679482"))
  ds.append(sinhvien(tenSV:"Hoang",tuoi:24,sdt:"0459679481"))
  ds.append(sinhvien(tenSV:"Nam",tuoi:20,sdt:"0459679481"))
  ds.append(sinhvien(tenSV:"Ba",tuoi:19,sdt:"0459679481"))
var lop = lopHoc(tenLop:"12A1",tenGV:"Nguyen Quang Vinh",dsLop:ds)
print("Danh sách lớp ban đầu")
print()
print(lop.tenGV)
for sv in lop.dsLop {
        sv.getInfo()
  }
print()
print("Danh sách lớp sau khi cập nhật")
print()
// Update giao vien
lop.updateGV(tenMoi: "Huỳnh Tấn Đạt")
//update ten sinh vien
var tenSVTim:String
tenSVTim = "Ba"
if(lop.timSV(tenSVTim:tenSVTim)){
  lop.updateSV(tenSVTim: tenSVTim )
  print("Đổi tên \(tenSVTim) thành công")
}
else {
print("Đổi tên \(tenSVTim) thất bại")
}
tenSVTim = "Nam"
if(lop.timSV(tenSVTim:tenSVTim)){
  lop.updateSV(tenSVTim: tenSVTim )
  print("Đổi tên \(tenSVTim) thành công")
}
else {
print("Đổi tên \(tenSVTim) thất bại")
}
lop.xoaSV(tenSVTim: "Hoang")
print(lop.tenGV)
print()
for sv in lop.dsLop {
        sv.getInfo()
  }
