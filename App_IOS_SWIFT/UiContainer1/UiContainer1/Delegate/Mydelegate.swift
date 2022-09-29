//
//  Mydelegate.swift
//  UiContainer1
//
//  Created by Tuấn Anh on 28/09/2022.
//

import Foundation


protocol MyDelegate {
    func passDelegate(person: Person)
    
}

struct Person {
    var name: String = ""
    var age: String = ""
    var phone: String = ""
    var address: String = ""
    var gender: Int?
}
