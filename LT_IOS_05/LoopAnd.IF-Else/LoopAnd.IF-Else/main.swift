//
//  main.swift
//  LoopAnd.IF-Else
//
//  Created by Tuấn Anh on 05/08/2022.
//

import Foundation

print("Hello, World!")
// Mark : For Loop
var arrInst = [1,2,3,4,5,7,8,9]

//C1 : duyệt từng phần tử trong mảng
for abc in arrInst{
print("ABC")
    print(abc)
//    break // Kết thúc vòng lặp tại thời điểm gọi
}
print("End Loop")


// C2 : Duyệt theo khoảng giới giạn

for x in 0...10 {
print(x , terminator: ":")}
print()

//  Vòng lặp While ... Do ( khi nào --- Làm )
//Khi nào còn thỏa mãn điều kiện , thì còn thực hiện khối lệnh
// Kiểm tra trước rồi làm
var a = 10
while a > 0 {

    a -= 2
print(a)

}

// Repeat ... while
// Ít nhất sẽ thực hiện khối lệnh 1 lần , rồi mới kiểm tra điều kiện , nếu thỏa mãn điều kiện thì thực hiện tiếp khối lệnh
var b = 5
repeat {
   
b += 5
    print(b)
}while b < 11


 //VD : Yêu cầu nhập vào 1 số lớn hơn 5 , nhỏ hơn thì yêu cầu nhập lại
//var number : Int
//repeat {
//print("Nhập Số :")
//    number = Int(readLine()!)!
//}while number <= 5
//print("Number > 5 " , number)
//

// VD : duyệt mảng bằng while .. do
// duyệt xuôi
var i = 0
while i < arrInst.count {
print(arrInst[i] , terminator: ",")
    i += 1
    
}
print()

print(i , arrInst.count-1)

i -= 1 // Trừ 1 để i = arrInts.count - 1 ( index lớn nhất mảng có thể truy xuất )
while i >= 0 {
print(arrInst[i] , terminator: "")
i -= 2
}


// MARK : Câu lệnh điều kiện if ... else ..
// if : nếu , else : Nếu không

if arrInst.isEmpty {// nếu điều kiện sau if đúng , thì thực hiện khối lệnh sau if
print("mảng này không có phần tử nào")
}else{// Khối lệnh trong else sẽ thực hiện nếu không thỏa mãn điều kiện trong if
print(arrInst)
}

// kiểm tra 1 số nhập vào
print("Nhập số input để kiểm trả : ")
 let numberInput = Int(readLine()!)!

if numberInput < 10 {
print("Số nhập nhỏ hơn 10")
}else if numberInput > 10 {
print("Số nhập vào lớn hơn 10")
} else {
print("sô nhập vào băng 10")}

switch numberInput  {
case 0...10 :
    print("Anhhhhh")
    
default:
    print("Nolove")
}
// kiểm tra kí tự nhập vào
print("Nhập vào 1 chữ cái : ")
let character = readLine()
if character == "a" {
print("1")
}else if character == "b" {
print("2")
}else {
print("5")
}



// Switch ... case : Xét trường hợp của 1 đối tượng sau swtich ( Swtich = trường hợp ; Case = xét )
// fallthrough // thực hiện khối lệnh trong case tiếp theo
switch character {
case "a":
    print("a")
case "b" :
    print("b")
default : " Not abc"
    
}
