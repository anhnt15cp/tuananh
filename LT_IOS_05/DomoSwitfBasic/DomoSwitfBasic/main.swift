//
//  main.swift
//  DomoSwitfBasic
//
//  Created by Tuấn Anh on 03/08/2022.
//

import Foundation

print("Hello, World!")

// MARK : Hàm ( Function )
// Hàm có tham số truyền vào , không có kiểu dữ liệu trả về 11111
//func
//let chieuDai = Int(readLine()!)!
//print("Nhập dài :")
// Hàm có tham số truyền vào , có kiểu dữ liệu trả về ( bắt buộc phải có return hàm có kiểu dữ liệu trả về )



// Hàm không có tham số truyền vào , không có kiểu dữ liệu trả về
//func tinhTong()  {
//print("Nhập a = ")
//    let a = Int(readLine()!)!// readLine là nhập dữ liệu từ bàn phím , có kiểu String
//    print("Nhập b = ")
//    let b = Int(readLine()!)!
//
//    print("Tổng hai sô là \(a) + \(b)")
//}
//Gọi hàm
//
////BTVD1 : Nhập vao tên của bạn , in ra tên đầy đủ
//func printName() {
//print("NHập Tện CỦa Bạn")
//    let name = readLine()
//    print("Your name is : \(name)")



// BTVD 2 : Nhập vào 3 số nguyên a , b , c . Tính trung bình cộng 3 số đó
//func trungBinhCong() {
//    print("Nhap a" , terminator: ":")
//    let a = Float(readLine()!)!
//    print("Nhap b" , terminator: ":")
//    let b = Float(readLine()!)!
//    print("Nhap c" , terminator: ":")
//    let c = Float(readLine()!)!
//
//    print("Tổng trung bình cộng 3 số là :", (a+b+c)/3.0)
//
//}
//trungBinhCong()
//
//
////C2
//print("Cách 2 :")
//func trungBinhCong(a:Float , b:Float , c:Float) -> Float {
//return (a + b + c)/3}
//print("TBC 3 số đó là \(trungBinhCong(a: 10, b: 15, c: 50))")

//BTVD 3 : tính chu vi và diện tích hình chữ nhật
//func chuVi(dai:Int , rong :Int) -> Int {
//return 2 * (dai+rong)}
//print("ChuVIHCN là \(chuVi(dai: 1, rong: 1))")
//
//func dienTich(dai:Int , rong : Int ) ->Int {
//return dai*rong}
//print("Diện Tích HCN là : \(dienTich(dai: 10, rong: 10))")

// CỘng tổng 3 số theo hàm có trả về
//func tinhTongBaSo ( a:Int , b:Int , c:Int) -> Int {
//
//return a + b + c
//}
//print("kết qủa tổng 3 số là : \(tinhTongBaSo(a: 10, b: 10, c: 10))")

// cộng tổng 3 số theo hàm không trả về
//func congTongBaSo (){
//    print("nhập A = ")
//    let a = Float(readLine()!)!
//    print("Nhập  B = ")
//    let b = Float(readLine()!)!
//    print("Nhập C =")
//    let c = Float(readLine()!)!
//
//    print("Tổng Ba Số Là :" , (a + b + c))
//
//}
//congTongBaSo()

//BTVD tính chu vi và diện tích HCN . Trong hàm có chứa tham số và dữ liệu trả về ...
//func chuvi(dai : Float , rong : Float) -> Float{
//
//return 2*(dai + rong)}
//print("chu vi hình chữ nhật là :\(chuvi(dai: 10, rong: 10))")
//
//func dientich(dai : Float , rong : Float) ->Float{
//return dai*rong}
////print("Diện tích hình chữ nhật là : \(dientich(dai: 10, rong: 20.3))")
///// BTVD tinhs chu vi và diện tích HCN . Kiểu hàm không có tham số và không có dữ liệu trả về/ 
//func chuvi(){
//    print("Nhập A")
//    let chieudai = Float(readLine()!)!
//    print("Nhập B")
//    let chiẻuong = Float(readLine()!)!
//    print("Diẹn Tích HCN là : " , chieudai * chiẻuong)
//}
//   chuvi()
//
func chuVi(dai: Int, rong: Int) -> Int {
    return 2 * (dai+rong)
}

func dienTich(dai: Int, rong: Int) -> Int {
    return dai * rong
}

print("Nhập dài: ")
let chieuDai = Int(readLine()!)!
print("Nhập rong: ")
let chieuRong = Int(readLine()!)!

print("Chu vi hcn là: \(chuVi(dai: chieuDai, rong: chieuRong))")
print("Diện tích hcn là: \(dienTich(dai: chieuDai, rong: chieuRong))")

