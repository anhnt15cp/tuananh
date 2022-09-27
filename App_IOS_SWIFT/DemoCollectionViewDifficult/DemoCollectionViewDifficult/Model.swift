//
//  File.swift
//  DemoCollectionViewDifficult
//
//  Created by Tuấn Anh on 22/09/2022.
//

import Foundation
class Shoppe {
    var image: String?
    var name: String?
    
    init(image: String , name: String){
        self.image = image
        self.name = name
    }
}
struct NameSection {
    var name: String?
}


struct ListShoppe {
    var image: String = ""
    var name: String = ""
    var money: String = ""
}
