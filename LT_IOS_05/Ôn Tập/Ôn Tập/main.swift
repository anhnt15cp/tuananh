//
//  main.swift
//  Ôn Tập
//
//  Created by Tuấn Anh on 22/08/2022.
//

import Foundation

print("Hello, World!")
//struct
struct Person {
    var name: String
    var age: String
}

//class

class Animal {
    var name: String
    var legs: Int

    init ( name: String, legs: Int) {
        self.name = name
        self.legs = legs
    }
    init(name: String) {
        self.name = name
        self.legs = 10
    }


}

let person1 = Person(name: "Vũ", age:"18")
print(person1.name , person1.age)
let dog = Animal(name: "Dog", legs: 4)
print(dog.name , dog.legs)



var a = 5 // Non-optional
var b: Int? // ? Có thể mang giá trị khi sử dụng
var c: Int! // ! là bắt buộc phải có giá trị khi sử dụng , nếu là lúc dùng đến biến mang giá trị nil => crash app

b = 10
c = 15
// Phải unrap ( chuyển sang kiểu non-ontional ) trước khi sử dụng biến optional

//C1 : dùng "??" sau ?? là giá trị được lấy sử dụng nếu biến bị nil
print((b ?? 0) + c)

//C2 : dùng guard let
func useGuardlet() -> Int? {
    guard let tempB = b else { //tempB nhận giá trị của b nếu b != nil , b = nil => nhảy vào else
        print("b bị nil ")
       return nil
        }
    print(tempB+c)
    return tempB+c

}
print(useGuardlet())


//C3 : dùng if let ..

if let tempC = c { // gán giá trị cho tempC nếu c không nil , tempC là non-Optional
    // Nếu C nil thì k thực hiện câu lệnh trong if
    //tempC chỉ sử dụng trong block sau if

    print("Co không nil , tổng b và c là : ", (b ?? 0 ) + tempC)
}


