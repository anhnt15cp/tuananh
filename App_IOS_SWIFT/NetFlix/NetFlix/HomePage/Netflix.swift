//
//  ViewController.swift
//  NetFlix
//
//  Created by Tuấn Anh on 27/09/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myScrollView: UIScrollView!
    @IBOutlet weak var myPageControl: UIPageControl!
    @IBOutlet weak var logginButton: UIButton!
    @IBOutlet weak var johnButton: UIButton!
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    
    
    let data = [Netflix(image: "Home1", description: "Chương trình truyền hình , phim không giới hạn và nhiều nội dung khác", description2: "Xem ở mọi nơi . Hủy bất kỳ lúc nào . Nhấn liên kết bên dưới để đăng ký"),
                Netflix(image: "Home2", description: "Xem trên bất kỳ thiết bị nào", description2: "Phát trực tuyến trên điện thoại , máy tính bảng , laptop và TV của bạn mà không cần trả thêm phí"),
                Netflix(image: "Home3", description: "Tải xuống và xem ngoại tuyến", description2: "tiết kiệm dung lượng , xem ngoại tuyến trên máy bay , tau hoặc tàu ngầm..."),
                Netflix(image: "Home4", description: "Không có hợp đồng phiền thoái", description2: "Tham gia ngay hôm nay , hủy bất cứ lúc nào")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupImage(config: data)
        
        
        
    }
    
    
    func setupUI() {
        view.addSubview(myScrollView)
        myScrollView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        myScrollView.isScrollEnabled = true
        myScrollView.showsHorizontalScrollIndicator = true
        myScrollView.isPagingEnabled = true
        myScrollView.delegate = self
        
        view.bringSubviewToFront(myPageControl)
        myPageControl.currentPage = 0
        myPageControl.tintColor = .red
        myPageControl.currentPageIndicatorTintColor = .red
        myPageControl.frame = CGRect(x: 0, y: 0, width: 100, height: 30)
        myPageControl.center = CGPoint(x: view.center.x, y: view.bounds.maxY - 100)
        myPageControl.numberOfPages = data.count
        
        view.addSubview(logginButton)
        logginButton.setTitle("Đăng Nhập", for: .normal)
        
        logginButton.setTitleColor(.red, for: .normal)
        logginButton.frame = CGRect(x: view.bounds.maxX - 120, y: 35, width: 100, height: 30)
        
        view.addSubview(johnButton)
        johnButton.setTitle("netflix.com/john", for: .normal)
        johnButton.backgroundColor = .red
        johnButton.frame = CGRect(x: 0, y: 0, width: 400, height: 45)
        johnButton.center = CGPoint(x: view.center.x, y: view.bounds.maxY - 50)
        
        view.addSubview(myLabel1)
        myLabel1.text = "Quyền Riêng Tư"
        myLabel1.textColor = .orange
        myLabel1.frame = CGRect(x: 130, y: 30, width: 130, height: 40)
        
        view.addSubview(myLabel2)
        myLabel2.text = "NETFLIX"
        myLabel2.textColor = .red
        myLabel2.frame = CGRect(x: 10, y: 25, width: 150, height: 50)
        
    }
    func setupImage(config: [Netflix]) {
        for (index,item) in config.enumerated() {
            let contentScroll = Bundle.main.loadNibNamed("ScrollView", owner: self, options: nil)?.first as! ScrollView
            contentScroll.myImageView.image = UIImage(named: item.image)
            contentScroll.myLabel1.text = item.description
            contentScroll.myLabel2.text = item.description2
            
            contentScroll.frame = CGRect(x: myScrollView.bounds.width * CGFloat(index) , y: 0, width: myScrollView.bounds.width, height: myScrollView.bounds.height)
            myScrollView.addSubview(contentScroll)
            
        }
        myScrollView.contentSize = CGSize(width: myScrollView.bounds.width * CGFloat(config.count), height: myScrollView.bounds.height)
    }
    @IBAction func acctionLoggin(_ sender: UIButton) {
        let vc = LogginViewController()
        //        let navigationController1 = UINavigationController(rootViewController: vc)
        vc.modalTransitionStyle = .coverVertical
        vc.modalPresentationStyle = .fullScreen
        //        navigationController?.pushViewController(navigationController1, animated: true)
        present(vc, animated: true)
        
    }
    @IBAction func acctionJohn(_ sender: UIButton) {
        let vc = JohnViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    
    
}
extension ViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = round(scrollView.contentOffset.x/view.bounds.width)
        myPageControl.numberOfPages = Int(pageIndex)
    }
}
