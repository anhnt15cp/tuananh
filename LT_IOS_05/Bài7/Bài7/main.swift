//
//  main.swift
//  Bài7
//
//  Created by Tuấn Anh on 18/08/2022.
//

import Foundation

print("Hello, World!")

/// non-optional
/// Bắt buộc phải có giá trị
var name: String = ""

/// Khai báo optional
/// Optional có thể nil hoặc không
var nameOptional: String?
nameOptional = nil


/// Cách 1: unwraping optional
var nameString: String?
nameString = "Duchv"

if nameString != nil {
    print(nameString!)
} else {
    print("myString has nil value")
}

/// Không check nil
//nameString = nil
//print(nameString!)


/// Optional binding: unwraping
/// Cách 2:

nameString = "Duchv"
if let unwrapString = nameString {
    /// Xảy ra khi mà nameString != nil
    print(unwrapString)
} else {
    /// Xảy ra khi mà nameString == nil
    print("myString has nil value")
}


/// Cách  3: unwrap optional sử dụng guard let
print("unwrapOptional func")
func unwrapOptional() {
    var nameString: String?
//    nameString = "Duchv"

    guard let unwrapString = nameString else {
        /// Xảy ra khi mà nameString là nil
        print("nameString bằng nil")
        return
    }
    /// Xảy ra khi mà nameString != nil
    print(nameString!)
    print(unwrapString)
}

unwrapOptional()


class Person {
    var name: String
    var nameOptional: String?
    
    init(name: String, nameOptional: String?) {
        self.name = name
        self.nameOptional = nameOptional
    }
}
let person = Person(name: "1", nameOptional: nil)


/// Closure
/// Closure là function không tên

/// Ứng dụng
/// - Truyền closure như là 1 tham số
/// - Đợi response (giá trị trả về) từ API, network.
/// - Callback: Truyền lại data từ màn hình khác.
/// + A sang màn B
/// + B back data lại màn A.


/// Khai 1 closure
///Cách cách khai báo 1 CLOSURE
///
let myFristClosure = { ()  in
    print("My Frist Closure")
}
myFristClosure()
//
let myNumber = { (number: Int) -> Int in
    return number + 10
}
myNumber(10)
//
({ (name: String) -> Void in
 print(name)
}) ("IDE")
//
var number:(Int, Int) -> (Int) = {
return $0 + $1  // Đô là 0 và 1 tương ứng với vị trí trong tham số
}
number(20, 20)

//
func TestClosure(name: String , myClosure: (String) -> Void) {
print("Test Closure")
myClosure(name)
}
TestClosure(name: "ABC") { x in
    print(x)
}

var testClosure: ((String, Int) -> Void)?

/// Truyền closure vào function
func callAPI(completed: ((String) -> Void)?) {
    print("Call API đến server")
    
    completed?("Data response")
}

/// Cách 1: Call func có tham số là closure
callAPI { response in
    print("response \(response)")
}

/// Cachs 2: Call function cos tham số
callAPI(completed: { response in
    print("response \(response)")
})


func callAPI2(failure: ((String) -> Void)?, success: ((String) -> Void)?) {
    print("Call API đến server")
    var isSuccess = false
    if isSuccess {
        success?("Data response")
    } else {
        failure?("Lỗi không call được API")
    }
}
/// Call function có closure
callAPI2 { error in
    
} success: { response in
    
}
/// Call function có closure
callAPI2(failure: { error in
    
}, success: { response in
    
})


/// Định nghĩa function có closure
func login(success: ((Person) -> Void)?,
           failure: ((String) -> Void)?) {
    print("Call API đến server")
    let isLoginSuccess = true
    if isLoginSuccess {
        success?(Person(name: "Hello", nameOptional: ""))
    } else {
        failure?("Lỗi không call được API")
    }
}

/// Call function có closure
/// Loading
login(success: { response in
    /// End loading
}, failure: { error in
    /// End loading
})
/// https://quizizz.com/join?gc=705333


///MARRK : Animation

//@IBOutlet weak var rubyImageView: UIImageView!
//
//    @IBOutlet weak var amRichLabel: UILabel!
//
/// Trạng thái alpha ban đầu là không nhìn thấy
//        rubyImageView.alpha = 0.0
//      amRichLabel.alpha = 0.0
//
//      /// Vị trí của text ban đầu là ở cuối màn hình
//       amRichLabel.center = CGPoint(x: view.center.x, y: view.center.y + 500)
//
//       UIView.animate(withDuration: 5) {
//       /// Hiện alpha dần dần
//           self.rubyImageView.alpha = 1.0
//           self.amRichLabel.alpha = 1.0
//
//           /// Di chuyển vị trí của label đi lên
//           self.amRichLabel.center.y = self.view.center.y + 200


