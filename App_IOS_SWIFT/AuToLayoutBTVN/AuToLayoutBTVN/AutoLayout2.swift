//
//  AutoLayout2.swift
//  AuToLayoutBTVN
//
//  Created by Tuấn Anh on 16/09/2022.
//

import UIKit

class AutoLayout2: UIViewController {
    let stackView = UIStackView()
    let stackView2 = UIStackView()
    let image1: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "2.jpg")
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    let image2: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "3.jpg")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .orange
        
        return image
    }()
    
    let image3: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "4.jpg")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .orange
        
        return image
    }()
    let image4: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "5.jpg")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .orange
    
        return image
    }()
    let labelSignUp: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sign up"
        label.font = UIFont.systemFont(ofSize: 30)
        label.textColor = .black
        return label
    }()
    
    let register: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Or,Register with Email"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    let emailTextField: UITextField = {
    let email = UITextField()
        email.placeholder = "@ Email ID"
        return email
    
    }()
    
    let passTextField: UITextField = {
    let email = UITextField()
        email.placeholder = "Password"
        return email
    
    }()
    
    let nameTextField: UITextField = {
    let email = UITextField()
        email.placeholder = "Full Name"
        return email
    
    }()
    
    let companyTextField: UITextField = {
    let email = UITextField()
        email.placeholder = "Company Name"
       
        return email
    
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutImage1()
        layoutSignUp()
        layoutStackview()
        layoutRegister()
        layoutStackView2()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        image4.layer.cornerRadius = 30
    }
    func layoutImage1() {
        view.addSubview(image1)
        
        image1.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        image1.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        image1.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        image1.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/4).isActive = true
        
    }
    func layoutSignUp() {
        view.addSubview(labelSignUp)
        
        labelSignUp.topAnchor.constraint(equalTo: image1.bottomAnchor, constant: 20).isActive = true
        labelSignUp.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        labelSignUp.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        labelSignUp.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }
    func layoutStackview() {
//    let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution =  .fillEqually
        stackView.axis = .horizontal
        view.addSubview(stackView)
        stackView.addArrangedSubview(image2)
        stackView.addArrangedSubview(image3)
        stackView.addArrangedSubview(image4)
        image2.layer.cornerRadius = 20
        image3.layer.cornerRadius = 20
        image4.layer.cornerRadius = 20
        
        stackView.topAnchor.constraint(equalTo: labelSignUp.bottomAnchor, constant: 30).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: 60).isActive = true
    
    }
    func layoutRegister() {
        view.addSubview(register)
    
        register.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 20).isActive = true
        register.centerXAnchor.constraint(equalTo: stackView.centerXAnchor).isActive = true
        register.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        register.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        register.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    func layoutStackView2() {
        view.addSubview(stackView2)
        stackView2.addArrangedSubview(emailTextField)
        stackView2.addArrangedSubview(passTextField)
        stackView2.addArrangedSubview(nameTextField)
        stackView2.addArrangedSubview(companyTextField)
        stackView2.translatesAutoresizingMaskIntoConstraints = false
        stackView2.distribution = .fillEqually
        stackView2.axis = .vertical
        stackView2.spacing = 20
    
        stackView2.topAnchor.constraint(equalTo: register.bottomAnchor, constant: 20).isActive = true
        stackView2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        stackView2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
//        stackView2.heightAnchor.constraint(equalToConstant: 200).isActive = true
        stackView2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        
    }
}
