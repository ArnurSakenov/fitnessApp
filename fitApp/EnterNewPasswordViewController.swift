//
//  EnterNewPasswordViewController.swift
//  fitApp
//
//  Created by Mereke on 05.01.2023.
//

import UIKit

class EnterNewPasswordViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
        
        self.title = "Enter New Password"
        
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.foregroundColor : UIColor.white ]
        addSubviews()
        setContstraints()
    }
    
    var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let resetPasswordLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "Your new password must be different from previous used password."
        label.textColor = .white
        label.layer.opacity = 0.5
        return label
    }()
    
    private let passwordField: UITextField = {
        let password = UITextField()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.layer.borderColor = UIColor.lightGray.cgColor
        password.layer.borderWidth = 0
        password.attributedPlaceholder = NSAttributedString (
         string: "Password",
         attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.58187747, green: 0.6370299459, blue: 0.7215286493, alpha: 1)])
        password.leftViewMode = .always
        password.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: password.frame.height))
        password.keyboardType = .default
        password.textColor = .white
        password.font = UIFont.systemFont(ofSize: 16)
        password.autocapitalizationType = .none
        password.backgroundColor = #colorLiteral(red: 0.1160912886, green: 0.1620997787, blue: 0.2332904935, alpha: 1)
        password.returnKeyType = .done
        password.layer.cornerRadius = 8
        password.clipsToBounds = true
        password.isSecureTextEntry = true

        return password
    }()
    
    private let reenterPasswordField: UITextField = {
       let password = UITextField()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.layer.borderColor = UIColor.lightGray.cgColor
        password.layer.borderWidth = 0
        password.attributedPlaceholder = NSAttributedString (
        string: "Re-enter password",
        attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.58187747, green: 0.6370299459, blue: 0.7215286493, alpha: 1)])
        password.leftViewMode = .always
        password.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: password.frame.height))
        password.keyboardType = .default
        password.textColor = .white
        password.font = UIFont.systemFont(ofSize: 16)
        password.autocapitalizationType = .none
        password.backgroundColor = #colorLiteral(red: 0.1160912886, green: 0.1620997787, blue: 0.2332904935, alpha: 1)
        password.returnKeyType = .done
        password.layer.cornerRadius = 8
        password.clipsToBounds = true
        password.isSecureTextEntry = true

        return password
        
    }()
    
    private let resetPasswordButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Reset Password", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.1320899725, green: 0.7720097303, blue: 0.3664159775, alpha: 1)
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        return button
    }()
    
    var buttonStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 12
        stack.clipsToBounds = true
        return stack
    }()
    
//    @objc func signIn (){
//
//        let signIn = LoginViewController()
//        navigationController?.pushViewController(signIn, animated: true)
//
//    }
    
    var labelStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 1
        stack.clipsToBounds = true
        return stack
    }()
    
    func addSubviews(){
        view.addSubview(contentView)
        
        contentView.addSubview(buttonStackView)
        buttonStackView.addArrangedSubview(resetPasswordLabel)
        buttonStackView.addArrangedSubview(passwordField)
        buttonStackView.addArrangedSubview(reenterPasswordField)
        buttonStackView.addArrangedSubview(resetPasswordButton)
        
    }
    func setContstraints(){
        NSLayoutConstraint.activate([
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        
            buttonStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 124),
            buttonStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            buttonStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            buttonStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -450),

        
        ])
    }
}
