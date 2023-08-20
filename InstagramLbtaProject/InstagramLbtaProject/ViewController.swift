//
//  ViewController.swift
//  InstagramLbtaProject
//
//  Created by Nicolas Monzon on 20/8/2023.
//

import UIKit

class ViewController: UIViewController {
    
    private var plusPhotoButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(UIImage(named: "plus_photo")?.withRenderingMode(.alwaysOriginal), for: .normal)
        return btn
    }()
    
    private var emailTextField: UITextField = {
        let emailTxf = UITextField()
        emailTxf.placeholder = "Email"
        emailTxf.backgroundColor = UIColor.init(white: 0, alpha: 0.03)
        emailTxf.borderStyle = .roundedRect
        emailTxf.font = UIFont.systemFont(ofSize: 14)
        emailTxf.translatesAutoresizingMaskIntoConstraints = false
        return emailTxf
    }()
    
    private var usernameTextField: UITextField = {
        let usernameTxf = UITextField()
        usernameTxf.placeholder = "Username"
        usernameTxf.backgroundColor = UIColor.init(white: 0, alpha: 0.03)
        usernameTxf.borderStyle = .roundedRect
        usernameTxf.font = UIFont.systemFont(ofSize: 14)
        usernameTxf.translatesAutoresizingMaskIntoConstraints = false
        return usernameTxf
    }()
    
    private var passwordTextField: UITextField = {
        let passwordTxf = UITextField()
        passwordTxf.placeholder = "Password"
        passwordTxf.backgroundColor = UIColor.init(white: 0, alpha: 0.03)
        passwordTxf.borderStyle = .roundedRect
        passwordTxf.font = UIFont.systemFont(ofSize: 14)
        passwordTxf.isSecureTextEntry = true
        passwordTxf.translatesAutoresizingMaskIntoConstraints = false
        return passwordTxf
    }()
    
    private var signUpButton: UIButton = {
        let btn = UIButton()
        btn.tintColor = .white
        btn.setTitle("Sign Up", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.layer.cornerRadius = 5
        btn.backgroundColor = UIColor(red: 149/255, green: 204/255, blue: 244/255, alpha: 1)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        view.addSubview(plusPhotoButton)
        view.addSubview(emailTextField)
        NSLayoutConstraint.activate([
            plusPhotoButton.widthAnchor.constraint(equalToConstant: 140),
            plusPhotoButton.heightAnchor.constraint(equalToConstant: 140),
            plusPhotoButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            plusPhotoButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            
        ])
        
        
        addInputs()
    }
    
    private func addInputs() {
        let stackview = UIStackView(arrangedSubviews: [
            emailTextField, usernameTextField, passwordTextField, signUpButton
        ])
        stackview.axis = .vertical
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.distribution = .fillEqually
        stackview.spacing = 10
        
        view.addSubview(stackview)
        NSLayoutConstraint.activate([
            stackview.topAnchor.constraint(equalTo: plusPhotoButton.bottomAnchor, constant: 20),
            stackview.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40),
            stackview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            stackview.heightAnchor.constraint(equalToConstant: 200)
        ])
    }

}

