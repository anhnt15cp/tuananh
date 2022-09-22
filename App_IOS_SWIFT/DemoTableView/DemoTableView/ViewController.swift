//
//  ViewController.swift
//  DemoTableView
//
//  Created by Tuấn Anh on 20/09/2022.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var genderTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var typeTextField: UITextField!
    var customerModel: CustomerModel?
    
    var playerAudio =  AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        setUpAudioPlayer()
        loadNhac()
//        setUpAudioPlayer()
        
    }
   
    
    @IBAction func registerButton(_ sender: UIButton) {
        if nameTextField.text == "" || cityTextField.text == "" || phoneNumber.text == "" || genderTextField.text == "" || ageTextField.text == "" || typeTextField.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Vui Lòng Nhập Đầy Đủ Thông Tin", preferredStyle: .actionSheet)
            alertController.addAction(UIAlertAction(title: "Ok", style: .default))
            present(alertController, animated: true)
        }
        
        
        let vc = KhachHangViewController()
        vc.modalTransitionStyle = .flipHorizontal
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        vc.khachHang = nameTextField.text ?? ""
        vc.tinhThanhPho = cityTextField.text ?? ""
        vc.soDienThoai = phoneNumber.text ?? ""
        vc.tuoiKhachHang = ageTextField.text ?? ""
        vc.gioiTinh = genderTextField.text ?? ""
        vc.loaiKhachHang = typeTextField.text ?? ""
        
       
        
        
        playerAudio.stop()
        
        
        vc.handleback = { [self] in
            nameTextField.text = ""
            cityTextField.text = ""
            phoneNumber.text = ""
            ageTextField.text = ""
            genderTextField.text = ""
            typeTextField.text = ""
        }
        
        
    }
    func loadNhac() {
        let queue = DispatchQueue(label: "Load Nhạc", qos: .default, attributes: .concurrent)
        queue.async {
            self.setUpAudioPlayer()
        }
    }
    
    func setUpAudioPlayer() {
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
           
            let path = Bundle.main.path(forResource: "1234", ofType: "mp3")
            let url = URL(fileURLWithPath: path!)
            playerAudio = try! AVAudioPlayer(contentsOf: url)
            
            playerAudio.enableRate = true
            playerAudio.delegate = self
            playerAudio.prepareToPlay()
            playerAudio.play()
            
            
            
        } catch _ {
            print("Lỗi không phát được nhac")
        }
        
    }
    
    
}
extension ViewController : AVAudioPlayerDelegate {
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        print("Kết Thúc Bài Hát")
    }
}
