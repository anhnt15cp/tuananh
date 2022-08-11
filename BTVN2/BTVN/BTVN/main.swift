////
////  main.swift
////  BTVN
////
////  Created by Tuấn Anh on 11/08/2022.
////
//
//import Foundation
//
//print("Hello, World!")
//
//Ta sẽ làm một bài toán quản lý sinh viên (Bài toán kinh điển của sinh viên bách khoa)
//
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



class Students {
    var name : String
    var age : String
    var phone : String
    
    init ( name : String , age : String , phone : String){
        self.name = name
        self.age = age
        self.phone = phone
    }
    
}
class classRoom {
    var nameClass  : String
    var nameGVCN : String
    var student : [Students]
    
    init( nameClass : String , nameGVCN : String , student1 : [Students]){
        self.nameClass = nameClass
        self.nameGVCN = nameGVCN
        self.student = student1
    }
    
    func updateGVCN ( newName : String){
        nameGVCN = newName
    }
    func clearStuden ( clearStuden : String){
        student.removeAll(){ student in
            return student.name == clearStuden
        }
    }
    func updateNameStudent( newName : Students){
        self.student.append(newName)
    }
    func findStuden ( name : String)-> Students?{
        if let studen = student.first(where: {$0.name == name}){
        return studen
        }else {
        print("không tìm thấy sv")}
        return nil
        
    }
}


var newClassRoom = classRoom.init(nameClass: "Techmaster", nameGVCN: "Quỳnh Teacher", student1:  [Students(name: "Nam", age:"18", phone: "0900"),
                                                                                                  Students(name: "Hoàng", age: "18", phone: "1900"),
                                                                                                  Students(name: "Linh", age: "18", phone: "0900"),
                                                                                                  Students(name: "Huyền", age: "18", phone: "0900"),
                                                                                                  Students(name: "Đức", age: "18", phone: "0900"),
                                                                                                  Students(name: "Dương", age: "18", phone: ""),
                                                                                                  Students(name: "Tùng", age: "18", phone: ""),
                                                                                                  Students(name: "Bằng", age: "18", phone: ""),
                                                                                                  Students(name: "Bắc", age: "18", phone: ""),
                                                                                                  Students(name: "Thanh", age: "18", phone: ""),])
print("Tên lớp học là : \(newClassRoom.nameClass)")
print("Tên GVCN là : \(newClassRoom.nameGVCN)")
for studen in newClassRoom.student{
    print("Tên học sinh là : \(studen.name) , Tuổi là : \(studen.age) , Số điện thoại là : \(studen.phone)")
}
newClassRoom.updateGVCN(newName: "Trang Teacher")
print("Tên Cô Giáo Mới là : \(newClassRoom.nameGVCN)")

newClassRoom.clearStuden(clearStuden: "Nam")
let amountStuden = newClassRoom.student.count
 print("Số học sinh trong lớp là : \(amountStuden)")

newClassRoom.updateNameStudent(newName: Students(name: "Luyện", age: "20", phone: "090004"))
let amountStuden1 = newClassRoom.student.count
print("Số Học sinh trong lớp là : \(amountStuden1)")

let findStuden = newClassRoom.findStuden(name: "Hoàng")
print(findStuden?.phone,findStuden?.age)
