//
//  HelpViewController.swift
//  NetFlix
//
//  Created by Tuấn Anh on 27/09/2022.
//

import UIKit

class HelpViewController: UIViewController {
    var window: UIWindow?
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(false, animated: false)
        
    }
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    @IBAction func notification(_ sender: UIButton) {
        let notificationVC = NotificationCenterViewController()
        
        present(notificationVC, animated: true)
        
    }
    
    @IBAction func privacy(_ sender: UIButton) {
        let privacyVC = PrivacyViewController()
        
        present(privacyVC, animated: true)
        
    }
    
    @IBAction func termOfUse(_ sender: UIButton) {
        let termOfUseVC = TermOfUseViewController()
        
        present(termOfUseVC, animated: true)
    }
    @IBAction func getPassword(_ sender: UIButton) {
        let getPassword = GetPasswordViewController()
        getPassword.modalPresentationStyle = .fullScreen
        present(getPassword, animated: true)
        
    }
    @IBAction func callNetflix(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Đã từ chối truy cập micrô", message: "Vui lòng cho phép ứng dụng này truy cập Micrô trong phần Cài đặt > Quyền riêng tư > Micrô > Netflix", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))
        present(alertController, animated: true)
    }
    @IBAction func chatting(_ sender: Any) {
        let chattingVC = ChattingViewController()
        chattingVC.modalPresentationStyle = .fullScreen
        present(chattingVC, animated: true)
    }
    
    
    
    
}
