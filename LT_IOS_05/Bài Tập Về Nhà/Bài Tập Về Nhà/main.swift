//
//  main.swift
//  Bài Tập Về Nhà
//
//  Created by Tuấn Anh on 06/08/2022.
//

import Foundation

print("Hello, World!")
//Bài 1: Viết chương trình tìm nghiệm của PT bậc 2: ax^2 + bx + c = 0.
//Bước 1: Tính delta = b*b -4ac
//Bước 2: So sánh delta với 0
//
//delta < 0 => phương trình (1) vô nghiệm
//delta = 0 => phương trình (1) có nghiệm kép x1 =x2 = -b/2a
//delta > 0 => phương trình (1) có 2 nghiệm phân biệt, ta dùng công thức nghiệm sau:
//x1 =-b+sqrt(delta /2a)
//x2 =-b-sqrt(delta /2a)
func bai1 (a : Double , b : Double , c: Double){
    let delta: Double = b*b - 4*a*c
    if delta < 0 {
        print("Phương Trình Vô Nghiệm")}
    if delta == 0 {
        print("có nghiệm kép x1 =x2 = \(-b/2*a)")
    }
    if delta > 0 {
        print(" Có 2 Nghiệm Phân Biệt :")
        print("x1 =\(-b+sqrt(delta/2*a))")
        print("x2 =\(-b-sqrt(delta/2*a))")
    }
    
}
bai1(a: 100, b: 200, c: 3)

//Bài 2: Viết chương trình nhập vào 1 mảng số nguyên. Yêu cầu in ra danh sách số lẻ và danh sách số chẵn có trong mảng.
func bai2 ( array : [Int]){
    var number = array
    let numberChan = number.filter { number in
        number % 2 == 0
    }
    print("Số Chẵn Là: \(numberChan)")
    let numberLe = number.filter { number in
        number % 2 != 0
        
    }
    print("Số Lẻ Là : \(numberLe)")
}
bai2(array: [1,2,6,5,3])


//Bài 3: Viết chương trình nhập vào họ và tên. In ra họ, tên của người vừa nhập.
func bai3 (){
    print("Nhập Họ Và Tên")
    let name = readLine()
    print("Your is Name :\(name!)")
}
bai3()


//Bài 4: Viết chương trình tính giai thừa của 1 số. Biết x! = x*(x-1)(x-2)…32*1.
func bai4(soNhap : Int){
    var giaiThua :Int = 1
    for i in 1...soNhap {
       giaiThua = giaiThua*i
    }
    print("So giai thua la : ",giaiThua)
}
bai4(soNhap: 5)





//Bài 5: Viết chương trình sắp xếp 1 dãy số vừa nhập thành 1 dãy tăng dần và giảm dần.
func bai5 (array : [Int]){
    var sortedArray = array
    for index in 0...sortedArray.count-1{
        let i = sortedArray[index]
        var min = i
        for past in index...sortedArray.count-1{
            let num:Int = sortedArray[past]
            if min > num { min = num}
        }
        if min != i{
            if let index_min = array.firstIndex(of: min){
                sortedArray[index] = min
                sortedArray[index_min] = i
            }
        }
    }
    print("Day so sau tang dan \(sortedArray)")
}

bai5(array: [1,3,2,7,4,9,5,6,8,10])

//Bài 6: Viết chương trình nhập vào 1 số từ 1 đến 5. Nếu người dùng nhập vào số 1 thì chạy bài 1, nếu là số 2 thì chạy bài 2, tương tự với bài 3, 4, 5. (Gợi ý: Viết thành các hàm và sử dụng câu lệnh điều kiện để kiểm tra số nhập vào)
print("Nhập vào 1 số từ 1 đến 5 :")
let numberInput = Int(readLine()!)!
if numberInput == 1 {
    print(bai1(a: 10, b: 10, c: 10))
}else if numberInput == 2 {
    print(bai2(array: [1,5,6,2]))}
else if numberInput == 3 {
    print(bai3())}
else if numberInput == 4 {
    print(bai4(soNhap: 5))} else{
        print(bai5(array: [3,4,5,6,7,9,8]))}


