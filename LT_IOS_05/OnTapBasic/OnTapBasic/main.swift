//
//  main.swift
//  OnTapBasic
//
//  Created by Tuấn Anh on 07/09/2022.
//

import Foundation

//print("Hello, World!")
//
//// MARK : Optinal
//
//let name: String? = "Quynh"
//
//// C1 :
//if let unrapName = name {
//print(unrapName)
//}
//
//// C2 :
//func testOptinal() {
//    guard let unrapName = name else{
//      return
//        }
//print(unrapName)
//
//}
//
//// C3 : ( không khuyến khích dễ gây crash )
//print(name!)
//
//// C4 :
//print(name ?? "")
//
//struct BlogPost {
//    let title: String?
//
//
//}
//let post: BlogPost? = BlogPost(title: "Bai Bao")
//
//print(post?.title?.count ?? 0)
//
//print(post!.title!.count)
//
//
//let nameAndAges: [String: Int?] = ["Quỳnh": nil , "An": 34]
//let ageDictionary = nameAndAges["An"]
//
//print(ageDictionary)
//print(ageDictionary!)
//print(ageDictionary!!)
//
//

// MARK : Bai Tap
/**
 Viết chương trình nhập ngày tháng năm
 - Tháng có bao nhiêu ngày
 - Tìm ngày trước ngày vừa nhập
 - Tìm ngày sau ngày vừa nhập
 
 
 */
//func ngayThangNam(day: Int , month: Int , year: Int) {
//
//    let day = day
//    let month = month
//    if month <= 1 || month <= 12 {
//        switch month {
//        case 1 , 3 , 5 , 7 , 8 , 10 , 12 :
//            print("Tháng \(month)" ," Có 31 Ngày ")
//        case 4 , 6 , 9 , 11 :
//            print("Tháng Có 30 Ngày","\(month)")
//
//        default:
//            print("Tháng Có 29 ngày")
//        }
//
//    }
//
//
//}
//ngayThangNam(day: 0, month: 5, year: 0)

func baiNgayThangNam(){
    func validate(day: Int, month: Int, year: Int) -> Bool{
        if year < 1 || year > 9999 || month < 1 || month > 12 || day < 1 || day > 31{
            return false
        }

        if day > getTotalDayInMonth(month: month, year: year){
            return false
        }

        return true
    }

    func getTotalDayInMonth(month: Int, year: Int) -> Int{
        switch month {
        case 1, 3, 5, 7, 8, 10, 12:
            return 31
        case 4, 6, 9, 11:
            return 30
        case 2:
            if isLeapYear(year: year){
                return 29
            }else{
                return 28
            }
        default:
            return 0
        }
    }

    func isLeapYear(year: Int) -> Bool {
        if (year % 4 == 0 && year != 100) || year % 400 == 0{
            return true
        }else{
            return false
        }
    }

    func calendar(){
        var year, month, day : Int!
        repeat {
            print("------")
            print("Nhập ngày: ", terminator: "")
            day = Int(readLine()!)!
            print("Nhập tháng: ", terminator: "")
            month = Int(readLine()!)!
            print("Nhập năm: ", terminator: "")
            year = Int(readLine()!)!
        } while (!validate(day: day, month: month, year: year))

        print("Tổng số ngày của tháng \(month!) là \(getTotalDayInMonth(month: month, year: year))")
        print(findDate(day, month, year).0)
        print(findDate(day, month, year).1)
        calendar()
    }

    func findDate(_ day: Int, _ month: Int, _ year: Int) -> (String, String){
        let totalDayInMonth = getTotalDayInMonth(month: month, year: year)

        if day == 1 {
            if month == 1 {
                return ("Ngày liền trước: \(getTotalDayInMonth(month: 12, year: year-1))/12/\(year - 1)", "Ngày liền sau: \(2)/\(month)/\(year)")
            }else{
                return ("Ngày liền trước: \(getTotalDayInMonth(month: month-1, year: year))/\(month-1)/\(year)", "Ngày liền sau: \(2)/\(month)/\(year)")
            }
        } else if day == totalDayInMonth {
            if month == 12 {
                return ("Ngày liền trước: \(getTotalDayInMonth(month: 12, year: year) - 1)/12/\(year)", "Ngày liền sau: \(1)/\(1)/\(year+1)")
            }else{
                return ("Ngày liền trước: \(totalDayInMonth-1)/\(month)/\(year)", "Ngày liền sau: \(1)/\(month+1)/\(year)")
            }
        } else{
            return ("Ngày liền trước: \(day-1)/\(month)/\(year)", "Ngày liền sau: \(day+1)/\(month)/\(year)")
        }
    }
    calendar()
}
