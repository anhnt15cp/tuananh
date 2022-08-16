//
//  ViewController.swift
//  UIPickerView
//
//  Created by Tuấn Anh on 27/07/2022.
//

import UIKit
// Bước 2 : Khai báo thêm UIPickerViewDataSoure , UIPickerViewDelegate

class ViewController: UIViewController , UIPickerViewDataSource , UIPickerViewDelegate {
    
    @IBOutlet weak var Pickerview: UIPickerView!
    @IBOutlet weak var resultLabel: UILabel!
    // Bước 1 : Tạo biến hình ảnh và biến tên các compotent ( thành phần )
    let arrayImage = ["1.jpg","2.jpg","3.jpg","4.jpg","5.jpg","6.jpg",]
    let nameImage = ["ốc xào","Cá Nướng","Bánh Mì","Sường Xào Chua Ngọt","Phở Cuốn","Phở Bò" ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        resultLabel.text = nameImage[0]
        
    }
    // Bước 3 : Đặt ' Số Lượng Thành Phần ' ( Func )
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    // Bước 4 : Đặt ' Số Dòng PeckerView có thể hiển thị lên trên màn hình ' (Func)
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayImage.count
    }
    // Bước 5 : Hiển thị hình ảnh lên Pickerview ( Func )
  
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageview = UIImageView(frame: CGRect(x: 10, y: 10, width: 100, height: 70))
        imageview.image = UIImage(named: arrayImage[row])
        return imageview
    }
    // Bước 6 : Căn chỉnh độ cao hình ảnh trên Pickerview
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 70
    }
    // Bước 7 : Hiển thị Tên Image lên trên Label ( Fun c : Pickerview )
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       let name = nameImage[row]
        resultLabel.text = name
    }
    


}

