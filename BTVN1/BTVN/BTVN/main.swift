import CoreGraphics
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
//Bài 1: Viết chương trình tìm nghiệm của PT bậc 2: ax^2 + bx + c = 0.
//Bước 1: Tính delta = b*b -4ac
//Bước 2: So sánh delta với 0
//
//delta < 0 => phương trình (1) vô nghiệm
//delta = 0 => phương trình (1) có nghiệm kép x1 =x2 = -b/2a
//delta > 0 => phương trình (1) có 2 nghiệm phân biệt, ta dùng công thức nghiệm sau:
//x1 =-b+sqrt(delta /2a)
//x2 =-b-sqrt(delta /2a)
//
func bai1( a : Double , b : Double , c : Double){
    let delta = b*b - 4*a*c
    if delta < 0 {
        print("PT vô nghiệm")
    }
    else if delta == 0 {
        print("Phuơng trình có nghiệm kép là : x1 =x2 = \(-b/2*a)")
    }
    else if delta > 0 {
        print("Phương Trình có 2 nghiệm phân biệt")
        print("x1 = \(-b+sqrt(delta/2*a))")
        print("x2 = \(-b-sqrt(delta/2*a))")
        
    }
}
bai1(a: 100, b: 50, c: 50)
//Mẹo nhẩm nghiệm phương trình bậc 2 nhanh:
//Nếu a+b+c=0 thì x1 = 1, x2 = c/a
//Nếu a-b+c=0 thì x1 = -1, x2 = -c/a
//
//Bài 2: Viết chương trình nhập vào 1 mảng số nguyên. Yêu cầu in ra danh sách số lẻ và danh sách số chẵn có trong mảng.
func bai2(array : [Int]){
    let numberChan = array.filter { number in
        number % 2 == 0
    }
    print("Số chẵn là : \(numberChan)")
    let numberLe = array.filter { number in
        number % 2 != 0
    }
    print("Số lẻ là : \(numberLe)")
}
bai2(array: [8,5,6,7,3,4])

//Bài 3: Viết chương trình nhập vào họ và tên. In ra họ, tên của người vừa nhập.
func bai3 (){
    print("Nhập họ và tên")
    let name = readLine()!
    print("Họ Và Tên Là : \(name)")
    
}
bai3()

//Bài 4: Viết chương trình tính giai thừa của 1 số. Biết x! = x*(x-1)(x-2)…32*1.

func bai4 (soNhap : Int){
    var giaiThua = 1
    for i in 1...soNhap{
        giaiThua = giaiThua*i
    }
    print("Số giai thừa là : \(giaiThua)")
}
bai4(soNhap: 5)
//Bài 5: Viết chương trình sắp xếp 1 dãy số vừa nhập thành 1 dãy tăng dần và giảm dần.
func bai5(array : [Int]){
    let soTangDan = array.sorted()
    print("Dãy số tăng dần là : \(soTangDan)")
}

bai5(array: [3,9,5,4,1])
//Bài 6: Viết chương trình nhập vào 1 số từ 1 đến 5. Nếu người dùng nhập vào số 1 thì chạy bài 1, nếu là số 2 thì chạy bài 2, tương tự với bài 3, 4, 5. (Gợi ý: Viết thành các hàm và sử dụng câu lệnh điều kiện để kiểm tra số nhập vào)
func bai6 (){
    print("Nhập Số Từ 1....5")
    var nhapSO = Int(readLine()!)!
    if nhapSO == 1 {
        print(bai1(a: 100, b: 100, c: 100))
    }else if nhapSO == 2 {
        print(bai2(array: [20,30,39,40,49]))
    }
    else if nhapSO == 3 {
    print(bai3())
    }else if nhapSO == 4 {
    print(bai4(soNhap: 10))
    }else{
    print(bai5(array: [20,10,4,5,6,3,2]))
    }
        
    
        
        }
bai6()
