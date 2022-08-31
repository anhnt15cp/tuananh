//
//  ViewController.swift
//  MotSoUIThuongDung
//
//  Created by Tuấn Anh on 22/08/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextView: UITextView!
    @IBOutlet weak var contenTextField: UITextField!
    @IBOutlet weak var topLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUi()
    }
func setupUi() {
//set text
    topLabel.text = "Những UI cơ bản"
    contenTextField.text = "Tuấn Anh"
    inputTextView.text = "Sau điều chỉnh của liên Bộ Công Thương - Tài chính, từ 15h hôm nay, mỗi lít xăng RON 95-III và E5 RON 92 vẫn ổn định ở mức giá như cách đây 10 ngày, lần lượt là 24.660 đồng và 23.720 đồng một lít. Như vậy, giá xăng trong nước đứt mạch đi xuống sau 5 kỳ giảm liên tiếp trong tháng 7."
    // Căn lề
    topLabel.textAlignment = .center
    inputTextView.textAlignment = .left
    contenTextField.textAlignment = .justified
    
    // TextField : set text mờ khi người dùng chưa nhập
    contenTextField.placeholder = " Nhập tên"
    
    // Chuyển thành dấu * khi nhập vào ( Hay dùng khi nhập mật khẩu )
    contenTextField.isSecureTextEntry = true
    
    // Set font chữ
    //Phải khai báo tên file trong Info.plist
    //File font phải có đuôi là ttf hoặc otf
    topLabel.font = UIFont(name: "", size: 20)
    
    
    //// Các loại Fonts chữ
//    func getAllFontname() {
//        for family in UIFont.familyNames {
//            print("\(family)")
//
//            for name in UIFont.fontNames(forFamilyName: family) {
//                print("\(name)")
//            }
//        }
}
    @IBAction func AcctionNext(_ sender: UIButton) {
        sender.setTitleColor(.red, for: .normal)
        // Khởi tạo màn cần chuyển
        let secondVC = SecondViewController()
        
        //Custom style present
//        secondVC.modalPresentationStyle = .formSheet // style mặc định khi present
        secondVC.modalPresentationStyle = .fullScreen
        
        secondVC.modalTransitionStyle = .flipHorizontal
        // sử dụng present để chuyển sang
        present(secondVC, animated: true) // animated là hiệu ứng khi chuyển màn
        
        // GỌi closure
        secondVC.handdleBack = {
            sender.setTitleColor(.brown, for: .normal)
            self.topLabel.text = "I Love You"
        }
    }
   
}

