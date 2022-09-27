//
//  TabBarViewController.swift
//  UiContainer1
//
//  Created by Tuấn Anh on 26/09/2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    var item = UITabBar()
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.backgroundColor = .yellow
       
       setUpViewcontrollers()
    }
   
    
 let save = UITabBarItem(title: "Anh", image: UIImage(named: ""), selectedImage: UIImage(named: ""))
    
    
    func setUpViewcontrollers() {
        
        let chatVC = ChatViewController()
        let chatNC = UINavigationController(rootViewController: chatVC)
        chatVC.tabBarItem = UITabBarItem(title: "Tin Nhắn", image: UIImage(systemName: "message" ), selectedImage: UIImage(systemName: "message.fill"))
        chatNC.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(chatNC, animated: true)
        let contactVC = ContactViewController()
        contactVC.tabBarItem = UITabBarItem(title: "Danh Bạ", image: UIImage(systemName: "person.text.rectangle" ), selectedImage: UIImage(systemName: "person.text.rectangle.fill"))
        contactVC.tabBarItem.badgeValue = "N+"
        contactVC.tabBarItem.badgeColor = .red
        
        let discoveryVC = DiscoveryViewController()
        
        let discoverryNC = UINavigationController(rootViewController: discoveryVC)
        discoveryVC.tabBarItem = UITabBarItem(title: "Khám Phá", image: UIImage(systemName: "aspectratio" ), selectedImage: UIImage(systemName: "aspectratio.fill"))
        navigationController?.pushViewController(discoveryVC, animated: true)
        let diaryVC = DiaryViewController()
        diaryVC.tabBarItem = UITabBarItem(title: "Nhật Ký", image: UIImage(systemName: "person.badge.clock" ), selectedImage: UIImage(systemName: "person.badge.clock"))
        let profileVC = ProfileViewController()
        profileVC.tabBarItem = UITabBarItem(title: "Cá Nhân", image: UIImage(systemName: "person" ), selectedImage: UIImage(systemName: "person"))
        
        self.viewControllers = [chatNC,contactVC,discoverryNC,diaryVC,profileVC]
    }
    
    
}
