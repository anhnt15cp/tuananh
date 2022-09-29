//
//  HomeViewController.swift
//  UiContainer1
//
//  Created by Tuấn Anh on 26/09/2022.
//

import UIKit
// MARK : truyền data giữa các màn hình
/**
 - truyền data xuôi từ màn trước sang màn sau , từ cha sang con
 - truyền data ngược từ màn sau về màn trước , từ con về cha dùng Closure
 - Sử dụng delegate để truyền dữ liệu
 - Sử dụng NotificationCenter
 
 
 */

class HomeViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white
        title = "Home"
//        let addImage = UIImage(systemName: "plus")?.withRenderingMode(.alwaysTemplate)
        let button = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(add))
        navigationItem.rightBarButtonItem = button
        
        let tabBarButton = UIBarButtonItem(title: "Tab Bar", style: .done, target: self, action: #selector(onGoToTabBarController))
        navigationItem.leftBarButtonItem = tabBarButton
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    @objc func add() {
//        guard let name = nameTextField.text else {
//            return
//        }
//        let createToDoVC = CreateTodoViewController()
//        createToDoVC.modalPresentationStyle = .fullScreen
//        createToDoVC.name = name
//        createToDoVC.passData = { [weak self] data in
//            guard let newSelf = self else {
//                return
//            }
//
//            newSelf.persons.append(data)
//            newSelf.tableView.reloadData()
//        }
//        navigationController?.pushViewController(createToDoVC, animated: true)
        
        if nameTextField.text == "" {
            let alertcontroller = UIAlertController(title: "Error", message: "Vui lòng nhập dữ liệu", preferredStyle: .actionSheet)
            let alertacction = UIAlertAction(title: "Ok", style: .default)
            alertcontroller.addAction(alertacction)
            present(alertcontroller, animated: true)
        }else {
            guard let name = nameTextField.text else {
                return
            }
            let createToDoVC = CreateTodoViewController()
            createToDoVC.modalPresentationStyle = .fullScreen
            createToDoVC.name = name
            createToDoVC.passData = { [weak self] data in
                guard let newSelf = self else {
                    return
                }

                newSelf.persons.append(data)
                newSelf.tableView.reloadData()
            }
            navigationController?.pushViewController(createToDoVC, animated: true)
        
        }
        
    }
    @objc func onGoToTabBarController() {
        let vc = TabBarViewController()
        
        vc.modalPresentationStyle = .fullScreen
        //        navigationController?.pushViewController(vc, animated: true)
        present(vc, animated: true)
    }
    
}
extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = "\(persons[indexPath.row].name ?? "")"
        cell.detailTextLabel?.text = persons[indexPath.row].phone
        
        return cell
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let Edit = UIContextualAction(style: .normal, title: "EDIT") { _, _, _ in
            let edit = CreateTodoViewController()
            edit.modalPresentationStyle = .fullScreen
//            let itemCanSua = self.persons[indexPath.row]
            edit.person = self.persons[indexPath.row]
          
            self.navigationController?.pushViewController(edit, animated: true)
            
        }
        Edit.backgroundColor = .blue
        let swipe = UISwipeActionsConfiguration(actions: [Edit])
        return swipe
    }
    
}
