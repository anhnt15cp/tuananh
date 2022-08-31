//
//  ViewController.swift
//  DemoDate
//
//  Created by Tuấn Anh on 29/08/2022.
//

import UIKit

class ViewController: UIViewController {
    let date = Date()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        print(date)
        creatDate()
        changeDateFormat()
        getComponents()
    }
func creatDate() {
// bước 1 : tạo calendar current
    let calendar = Calendar.current
    // bước 2 : Khởi tạo các thành phần của kiểu Date
    var components = DateComponents()
// Gán giá trị cho các thành phần
    components.day = 10
    components.month = 11
    components.year = 2010
    components.hour = 12
    components.minute = 13
    components.second = 14
    //Tạo đối tượng kiểu Date từ các thành phần đã tạo
    let newDate = calendar.date(from: components) // newDate: Date
//    print("Custom Date")
    print(newDate!)
    
    //DateForMatter : đôi tượng định dạng kiểu dữ liệu Date
    let formatter = DateFormatter()
    formatter.dateStyle = .full
    formatter.timeStyle = .full
    // Sử dụng DateFormatter đổi từ date về String
    let timeString = formatter.string(from: newDate!)
    print("TimeString" , timeString)

}
//     Định dạng kiểu ngày tháng khi in ra
func changeDateFormat() {
//     Định dạng đổi date sang String
let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "EEEE - MM + dd // yyyy"
    let stringDate = dateFormatter.string(from: date)
    print(stringDate)

    // Đổi từ String sang Date
    let newDate = dateFormatter.date(from: stringDate) // stringDate phải đúng định dang của dateFormat
    print("DateNew",newDate)

}
    // Lấy từng thành phần trong Date ra
    func getComponents() {
        let calendar = Calendar.current
        // tạo đối tượng chưa các thành phần cần lấy ra
        let components = calendar.dateComponents([.hour,.minute,.second], from: date )

        print("Giờ : \(components.hour), nano Giây : \(components.nanosecond)")
    }

}


