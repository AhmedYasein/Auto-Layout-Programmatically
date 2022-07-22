//
//  LoginView.swift
//  AutoLayout
//
//  Created by Ahmed Yasein on 7/21/22.
//  Copyright © 2022 Ahmed Yasein. All rights reserved.
//

import Foundation
import UIKit


class LoginView: UIView {
    
    
    
    private lazy var profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .gray
        imageView.layer.cornerRadius = 50
        return imageView
    }()
    
    
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    private lazy var userNameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = UIFont.systemFont(ofSize: 14)
        textField.borderStyle = .roundedRect
        textField.tintColor = .red
        textField.placeholder = "User Name"
        return textField
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = UIFont.systemFont(ofSize: 14)
        textField.borderStyle = .roundedRect
        textField.tintColor = .red
        textField.placeholder = "Password"
        return textField
    }()
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.titleLabel?.textColor = .white
        button.setTitle("Login", for: .normal)
        button.layer.cornerRadius = 10
        return button
        
    }()
    private lazy var loginButton2: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.titleLabel?.textColor = .white
        button.setTitle("Login 2", for: .normal)
        button.layer.cornerRadius = 10
        return button
        
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func addsubView(){
        addSubview(scrollView)
        scrollView.addSubview(containerView)
        containerView.addSubview(profileImageView)
        containerView.addSubview(userNameTextField)
        containerView.addSubview(passwordTextField)
        containerView.addSubview(loginButton)
        containerView.addSubview(loginButton2)
    }
    
    func layout(){
        addsubView()
        setupScrollViewConstraints()
        setupContainerViewoCnstraints()
        setupPrifileImageConstraints()
        setupUserNameTextFieldConstraints()
        setupPssswordTextFieldConstraints()
        setupLoginButtonConstraints()
        setupLoginButton2Constraints()
    }
    
    private func setupScrollViewConstraints(){
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: bottomAnchor)
            
        ])
    }
    
    private func setupContainerViewoCnstraints(){
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            containerView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            containerView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 1)
            
        ])
    }
    
    private func setupPrifileImageConstraints(){
        NSLayoutConstraint.activate([
            profileImageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 8),
            profileImageView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            profileImageView.widthAnchor.constraint(equalToConstant: 100),
            profileImageView.heightAnchor.constraint(equalToConstant: 100)
            
        ])
    }
    private func setupUserNameTextFieldConstraints(){
        NSLayoutConstraint.activate([
            userNameTextField.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 8),
            userNameTextField.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 8),
            userNameTextField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -8)
            
        ])
    }
    private func setupPssswordTextFieldConstraints(){
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 8),
            passwordTextField.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 8),
            passwordTextField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -8)
            
        ])
    }
    private func setupLoginButtonConstraints(){
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 8),
            loginButton.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 1/2),
            loginButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            
            
        ])
        
    }
    private func setupLoginButton2Constraints(){
        
        NSLayoutConstraint.activate([
            loginButton2.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 800),
            loginButton2.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 1/2),
            loginButton2.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            loginButton2.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8)
            
        ])
        
    }
    
}
