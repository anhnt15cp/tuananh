//
//  main.swift
//  DeMoArraySwitf
//
//  Created by Tuấn Anh on 05/08/2022.
//

import Foundation

print("Hello, World!")

//colections  : dữ liệu là kiểu tập hợp nhiều phần tử có cùng kiểu dữ liệu
// có các kiểu collection sau : Array ( Mảng ) , Dictionary (Key : value ) , set (giống như array , khác 1 số tính chất )

//Mark : Array ( Mảng )
// Là một tập hợp các phần tử có cùng kiểu dữ liệu
//Khai Báo Mảng


// Khai báo 1 mảng số nguyên . (1)
var arrInts : [Int] // mới chỉ khai báo kiểu dữ liệu , chưa được khởi tạo

// Khai báo 1 mảng chuỗi
var arrNames : [String] = ["Dạt , Tuấn , Anh"]

var arrCharacter : [Character] = [Character].init(repeating: "*", count: 10)
print(arrNames)
print(arrCharacter)

//print ( arrInts )
// Thêm phần tử vào mảng
arrInts = [Int] () // Có dấu () nghĩa là khởi tạo , mảng sau khi khởi tạo sẽ là mảng rỗng
arrInts.append(5)
arrInts.append(6)
print(arrInts)


//Thêm nhièu phần tử
arrInts.append(contentsOf: [1, 2, 3])
print(arrInts)
arrInts += [100 , 99 , 98]
print(arrInts)

// Đối với array , chúng ta quản lí các phân tử theo index
//print(arrNames[1])

// truy xuất nhanh đến phần tử đầu và cuối
print(arrNames.first)
print(arrNames.last)


// Kiểm tra mảng có rỗng không
print("ArrInt is Empty" , arrInts.isEmpty)
// Lấy ra số lượng phần tử của mảng
print("ArrInts Has \(arrInts.count) numbers")

// Chèn phần tử vào vị trí trong mảng
arrNames.insert("Ba", at: 0)


// Xóa phần tử trong mảng
//arrInts.removeAll() // Xóa hết phần tử trong mảng
//
//
//print(arrInts)

// Xóa nhanh phần tử đầu / cuối
//arrNames.removeFirst()
//
//arrNames.removeLast()


// duyệt các phần tử trong mảng
for name in arrNames { //duyệt từng phần tử trong Arrnames
    print(name , terminator: ",")
}
print()
for index in 0..<arrInts.count {// duyệt các phần tử theo index trong mảng
    print(arrInts[index] , terminator: "-")
    
}
print()
for (index , value) in arrNames.enumerated() {// duyệt các phần tử trong mảng ( lấy được ra Index và giá trị phân tử tại index đó
    
    print("At \(index) value is : \(value)")
}
print()

// duyệt mảng bằng closure " forEach "
arrNames.forEach{ name in
    print(name)
}
// Trong switf không duyệt ngược được , nên sẽ phải đảo ngược mảng trước rồi duyệt
for number in arrInts.reversed() {
    print(number , terminator: "()")}
print()

// Một vài CLOSURE hay dùng
let sortedInts = arrInts.sorted() // Sắp xếp tăng dần , trả ra 1 mảng đã được sắp xếp
print(sortedInts)

arrInts.sort() // Tự sắp xếp chính bản thân mảng đó
print(arrInts)

// Lọc (filter)
let arrayChan = arrInts.filter { number in
    // viết biểu được điều kiện trong khối lệnh
    number % 2 == 0  // Biểu thức logic ( trả về true học false )
}
print(arrayChan)




let arrNameT = arrNames.filter { name in
    name.contains("A")
}
print(arrNameT , "abc")

// Lấy ra  phần tử đầu tiên thỏa mãn điều kiện của biểu thức logic
let nameHasu = arrNames.first { name in
    name.contains ("u")
}
print(nameHasu)

// Lấy ra index phần tử đầu tiên thỏa mãn điều kiện của biểu thức logic
let indexItem = arrNames.firstIndex { name in
    name.contains ("D")
}
print(indexItem)

// thay đổi giá trị của phần tử tại 1 index
arrNames[1] = "La"
print(arrNames)
arrInts[2] = 2
print(arrInts)
//// MARK :  Dictionnary
// Cũng là kiểu tập hợp , không quản lý theo index giống array mà quản lý theo định danh ( key )
// Mỗi key chỉ mang 1 giá trị duy nhất (value )

var dictionaries = [String : String] ()
dictionaries["Tung"] = "GV"
dictionaries["Luyen"] = "HV"
dictionaries["Dat"] = "HV"

print(dictionaries)
// sửa giá trị theo key
dictionaries["Luyen"] = "GV"
print(dictionaries)

// Duyệt mảng dictionary
for item in dictionaries{
    print(item.key , item.value)
}
// Print All KEY
for key in dictionaries.keys {
print(key)
    
}
// Print All Value
// Lấy ra các VALUE
for value in dictionaries.values {
print(value)
    
}

// Sửa giá trị theo key
dictionaries.updateValue("GV Ios", forKey: "Tung")
print(dictionaries)


// Xóa phần tử
dictionaries.removeValue(forKey: "")
print(dictionaries)

// Áp dụng tương tự được các Clousure của mảng.

// MARK : Sét giống như mảng , nhưng mỗi phần tử đều là duy nhất
// Vị trí index của SET không chuẩn
// Sửa phần tử : remove phần tử cần sửa , sau đó add phần tử mới
var setInt = Set<Int>()
setInt = [1,1,1,1,2,2,2,3,3,4,4,5,5,6,]
print(setInt.sorted())// Sorted : sắp xếp lại phần tử
print(setInt)
