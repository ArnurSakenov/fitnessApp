//
//  ForgotPasswordViewController.swift
//  fitApp
//
//  Created by Mereke on 05.01.2023.
//

import UIKit

class ForgotPasswordViewController: UIViewController, UITextFieldDelegate {
    
    let strokeLayer = CAShapeLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
        
        self.title = "Reset Password"
        
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.foregroundColor : UIColor.white ]
        
        addSubviews()
        setContstraints()

        strokeLayer.strokeColor = #colorLiteral(red: 0.1320899725, green: 0.7720097303, blue: 0.3664159775, alpha: 1)
        strokeLayer.lineWidth = 2
        strokeLayer.isHidden = true
        let strokePath = UIBezierPath(roundedRect: emailField.bounds, cornerRadius: 8)
        strokeLayer.path = strokePath.cgPath
        emailField.layer.addSublayer(strokeLayer)
        emailField.delegate = self

    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
           strokeLayer.isHidden = true
       }

    
    private let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let emailField: UITextField = {
        
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.backgroundColor = #colorLiteral(red: 0.1160912886, green: 0.1620997787, blue: 0.2332904935, alpha: 1)
        email.leftViewMode = .always
        email.attributedPlaceholder = NSAttributedString (
            string: "Email",
            attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.58187747, green: 0.6370299459, blue: 0.7215286493, alpha: 1)])
        email.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: email.frame.height))
        email.keyboardType = .emailAddress
        email.textColor = .white
        email.font = UIFont.systemFont(ofSize: 16)
        email.layer.cornerRadius = 8
        email.autocapitalizationType = .none
        email.returnKeyType = .done
        
        return email
    }()

    private let sendEmailButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Send Email", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.1320899725, green: 0.7720097303, blue: 0.3664159775, alpha: 1)
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        button.addTarget(nil, action: #selector(signIn), for: .touchUpInside)
        return button
    }()
    
    private let buttonStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 12
        stack.clipsToBounds = true
        return stack
    }()

    private let EnterEmailLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "Enter the email associated with your account and we'll send an email to reset your password."
        label.textColor = .white
        label.layer.opacity = 0.5
        return label
    }()
   
    @objc func signIn (){
        let signIn = EnterNewPasswordViewController()
        navigationController?.pushViewController(signIn, animated: true)
        
    }
    
    func addSubviews(){
        view.addSubview(contentView)
        contentView.addSubview(buttonStackView)
        buttonStackView.addArrangedSubview(EnterEmailLabel)
        buttonStackView.addArrangedSubview(emailField)
        buttonStackView.addArrangedSubview(sendEmailButton)
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
            buttonStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -520)
        ])
    }
}
