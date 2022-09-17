//
//  ViewController.swift
//  AutoLayoutWithNsConstraint
//
//  Created by Tuấn Anh on 14/09/2022.
//

import UIKit

class ViewController: UIViewController {
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .orange
        return view
    }()
    
    let safeView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    let headerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow
        return view
    }()
    
    let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow
        return view
    }()
    
    let footerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow
        return view
        
    }()
    let avatarImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage.init(systemName: "person.fill")
        image.contentMode = .scaleAspectFit
        image.backgroundColor = .orange
        image.layer.cornerRadius = image.bounds.height/2
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buildLayout()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(avatarImageView.frame)
        avatarImageView.layer.cornerRadius = avatarImageView.bounds.height/2
        avatarImageView.layer.masksToBounds = true
    }
  
    func buildLayout() {
        let _: UILayoutGuide = view.safeAreaLayoutGuide
        let _: UILayoutGuide = view.layoutMarginsGuide
        let margin: CGFloat = 20
        view.addSubview(containerView)
        containerView.addSubview(safeView)
        safeView.addSubview(headerView)
        safeView.addSubview(footerView)
        safeView.addSubview(contentView)
        headerView.addSubview(avatarImageView)
        
        //Mark 1 : Container View
        containerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        //Mark 2 : Safe View
        
        safeView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        safeView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        safeView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        safeView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        //Margin : khoang trong giua~ 2 hinh`
        //Mark3 : Header View
        
        headerView.topAnchor.constraint(equalTo: safeView.topAnchor, constant: 20).isActive = true
        headerView.leadingAnchor.constraint(equalTo: safeView.leadingAnchor, constant: 20).isActive = true
        headerView.trailingAnchor.constraint(equalTo: safeView.trailingAnchor, constant: -20).isActive = true
        headerView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        //Mark : footerView
        
        footerView.widthAnchor.constraint(equalTo: safeView.widthAnchor,multiplier: 1,constant: -2*margin).isActive = true
        footerView.centerXAnchor.constraint(equalTo: safeView.centerXAnchor).isActive = true
        footerView.heightAnchor.constraint(equalTo: safeView.heightAnchor, multiplier: 1/3).isActive = true
        footerView.bottomAnchor.constraint(equalTo: safeView.bottomAnchor).isActive = true
        
        // Mark : Content View
        
        contentView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 20).isActive = true
        contentView.leadingAnchor.constraint(equalTo: headerView.leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: headerView.trailingAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: footerView.topAnchor, constant: -20).isActive = true
        
        // Mark : Avata View
        
        avatarImageView.centerXAnchor.constraint(equalTo: headerView.centerXAnchor).isActive = true
        avatarImageView.centerYAnchor.constraint(equalTo: headerView.centerYAnchor).isActive = true
        avatarImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        avatarImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    
}

