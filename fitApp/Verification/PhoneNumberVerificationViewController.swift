//
//  PhoneNumberVerificationViewController.swift
//  fitApp
//
//  Created by Arnur Sakenov on 09.01.2023.
//

import UIKit

class PhoneNumberVerificationViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
        title = "Phone Number"
        navigationController?.navigationBar.largeTitleTextAttributes =
        [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        addSubviews()
        setContstraints()
        
        // Do any additional setup after loading the view.
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.prefersLargeTitles = false
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private let verifyButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Verify", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.1320899725, green: 0.7720097303, blue: 0.3664159775, alpha: 1)
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        return button
    }()
    
    private let methodLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16)
      
        label.text = "We're going to send you a verification code to confirm your identity"
        label.textColor = .white
        label.layer.opacity = 0.5
        return label
    }()
    
    private let phoneTextField: UITextField = {
        let login = UITextField()
        login.translatesAutoresizingMaskIntoConstraints = false
        login.backgroundColor = #colorLiteral(red: 0.1160912886, green: 0.1620997787, blue: 0.2332904935, alpha: 1)
        login.leftViewMode = .always
        login.attributedPlaceholder = NSAttributedString (
            string: "Phone",
            attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.58187747, green: 0.6370299459, blue: 0.7215286493, alpha: 1)])
        
        
        login.textColor = .white
        login.font = UIFont.systemFont(ofSize: 16)
        login.autocapitalizationType = .none
        login.returnKeyType = .done
        login.layer.cornerRadius = 8
        login.clipsToBounds = true
        return login
    }()
    func addSubviews(){
//        labelStackView.addArrangedSubview(verify)
    
//        verificationTypeStackView.addArrangedSubview(mainCollectionView )
        view.addSubview(methodLabel)
        view.addSubview(phoneTextField)

        view.addSubview(verifyButton)
       
    }
    func setContstraints(){
       
        NSLayoutConstraint.activate([
            methodLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 116),
            methodLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -619),
            methodLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            methodLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            
           
            
            phoneTextField.heightAnchor.constraint(equalToConstant: 56),
            phoneTextField.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -531),
            phoneTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24 ),
            phoneTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            
            verifyButton.heightAnchor.constraint(equalToConstant: 56),
            verifyButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            verifyButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            verifyButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
            
            
        
        ])
    }

}
