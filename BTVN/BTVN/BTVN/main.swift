import Darwin
////
////  main.swift
////  BTVN
////
////  Created by Tuấn Anh on 10/08/2022.
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


class student {
    var name : String
    var age : String
    var phone : String
    
    init ( name : String , age : String , phone : String){
    self .name = name
        self.age = age
        self.phone = phone
    
    }

}

class school {
    var nameSchool : String
    var nameGVCN : String
    var Student1 : [student]

    init(nameSchool : String , nameGVCN : String , Student2 : [student]){
        self.nameSchool = nameSchool
        self.nameGVCN = nameGVCN
        self.Student1 = Student2
    
    
    }
    func moreStudent (newStuden : student ) {
        Student1.append(newStuden)
    }
    
    
    func clearStuden ( name : String){
        Student1.removeAll(){element in
            return element.name == name
        }
        
        func newNameGVCN ( nameGVCN : String){
            nameGVCN = newNameGVCN
        }
        
    }
    
    
}
var newSchool = school.init(nameSchool: "Techmaster", nameGVCN: "Teacher Quỳnh", Student2: [student(name: "Nam", age:"18", phone: "0900"),
                                                                                            student(name: "Hoàng", age: "18", phone: "0900"),
                                                                                            student(name: "Linh", age: "18", phone: "0900"),
                                                                                            student(name: "Huyền", age: "18", phone: "0900"),
                                                                                            student(name: "Đức", age: "18", phone: "0900"),
                                                                                            student(name: "Dương", age: "18", phone: ""),
                                                                                            student(name: "Tùng", age: "18", phone: ""),
                                                                                            student(name: "Bằng", age: "18", phone: ""),
                                                                                            student(name: "Bắc", age: "18", phone: ""),
                                                                                            student(name: "Thanh", age: "18", phone: ""),])

for student in newSchool.Student1{
    print("Tên Học Sinh Là : \(student.name) , tuổi là : \(student.age) , SDT là : \(student.phone)")
}
var moreStudent = newSchool.moreStudent(newStuden: student(name: "Tuấn Anh", age: "20", phone: "0948889928"))
var amountStuden1 = newSchool.Student1.count
print("Số học sinh trong lớp là : \(amountStuden1)")


var clearStudent = newSchool.clearStuden(name:"Nam")
var amountStudent = newSchool.Student1.count
print("Số học sinh trong lớp là : \(amountStudent)")

newSchool.newNameGVCN(newNameGVCN: "TeacherTrang")
print(newSchool.nameGVCN)

