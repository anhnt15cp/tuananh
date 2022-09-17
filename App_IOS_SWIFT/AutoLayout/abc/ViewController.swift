//
//  ViewController.swift
//  abc
//
//  Created by Tuấn Anh on 10/09/2022.
//

import UIKit

class ViewController: UIViewController {
    let imageView = UIImageView()
    
    let myTextField1 = UITextField()
    let myTextField2 = UITextField()
    let myButton = UIButton()
    
    let loginButton = UIButton()
    let myLabel = UILabel()
    let myLabel1 = UILabel()
    let myStackView = UIStackView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupImageView()
        setupUiTextField()
        setupUiTextField1()
        setupUiButton()
        setupLoginButton()
        setUpStackView()
       
    }
    func setupImageView() {
        let URL = URL(string: "https://toigingiuvedep.vn/wp-content/uploads/2021/06/hinh-anh-suy-tu-1.jpg")!
        let data = try! Data(contentsOf: URL)
        
        imageView.image = UIImage(data: data)
        
        view.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        imageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/3).isActive = true
        
    }
    func setupUiTextField() {
        myTextField1.placeholder = "Email"
        
        view.addSubview(myTextField1)
        
        myTextField1.translatesAutoresizingMaskIntoConstraints = false
        myTextField1.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 50).isActive = true
        myTextField1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        myTextField1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        myTextField1.heightAnchor.constraint(equalToConstant: 45).isActive = true
       
        
    }
    func setupUiTextField1() {
        myTextField2.placeholder = "PassWord"
        myTextField2.isSecureTextEntry = true
        view.addSubview(myTextField2)
        
        myTextField2.translatesAutoresizingMaskIntoConstraints = false
        myTextField2.topAnchor.constraint(equalTo: myTextField1.bottomAnchor, constant: 20).isActive = true
        myTextField2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        myTextField2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        myTextField2.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
    }
    func setupUiButton() {
        myButton.setTitle("Forgot PassWord?", for: .normal)
        myButton.setTitleColor(.black, for: .normal)
        view.addSubview(myButton)
        
        myButton.translatesAutoresizingMaskIntoConstraints = false
        myButton.topAnchor.constraint(equalTo: myTextField2.bottomAnchor, constant: 20).isActive = true
        myButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true

        myButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        myButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
    }
    func setupLoginButton() {
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.red, for: .normal)
        loginButton.backgroundColor = .orange
        
        view.addSubview(loginButton)
        
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.topAnchor.constraint(equalTo: myTextField2.bottomAnchor, constant: 120).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:30).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    func setUpStackView() {
        myLabel.text = "Don't have an account?"
        myLabel.textColor = .black
        
        myLabel1.text = "Register"
        myLabel1.textColor = .orange
        
        myStackView.addArrangedSubview(myLabel)
        myStackView.addArrangedSubview(myLabel1)
        myStackView.distribution = .fill
        myStackView.alignment = .center
      
        
        view.addSubview(myStackView)
        myStackView.translatesAutoresizingMaskIntoConstraints = false
        myStackView.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 25).isActive = true
        myStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        myStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        myStackView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        myStackView.axis = .horizontal
        myStackView.spacing = 5
        
       
        
    }
}

