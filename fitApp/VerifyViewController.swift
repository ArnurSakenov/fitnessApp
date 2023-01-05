//
//  VerifyViewController.swift
//  fitApp
//
//  Created by Arnur Sakenov on 05.01.2023.
//

import UIKit

class VerifyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
        addSubviews()
        setContstraints()
        // Do any additional setup after loading the view.
    }
    
    private let continueButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Continue", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.1320899725, green: 0.7720097303, blue: 0.3664159775, alpha: 1)
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        return button
    }()
    
    private let identityLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 32)
        label.text = "Verify your identity"
        label.textColor = .white
        label.layer.opacity = 0.5   
        return label
    }()
    
    private let emailViewBlock: UIView = {
        let block = UIView(frame: CGRect(x: 0, y: 0, width: 327, height: 72))
        block.backgroundColor = #colorLiteral(red: 0.1160912886, green: 0.1620997787, blue: 0.2332904935, alpha: 1)
        
        return block
    }()
    
    private let phoneNumberView: UIView = {
        let block = UIView(frame: CGRect(x: 150, y: 150, width: 50, height: 50))
        block.backgroundColor = #colorLiteral(red: 0.1160912886, green: 0.1620997787, blue: 0.2332904935, alpha: 1)
      
        return block
    }()
    
    private let methodLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "Choose a method to verify your identity"
        label.textColor = .white
        label.layer.opacity = 0.5
        return label
    }()
    
    private let verificationTypeStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing =  2
        stack.clipsToBounds = true
        return stack
    }()
    
    private let labelStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 16
        stack.clipsToBounds = true
        return stack
    }()
    
    func addSubviews(){
        labelStackView.addArrangedSubview(identityLabel)
        labelStackView.addArrangedSubview(methodLabel)
        verificationTypeStackView.addArrangedSubview(emailViewBlock)
        verificationTypeStackView.addArrangedSubview(phoneNumberView)
        view.addSubview(labelStackView)
        view.addSubview(verificationTypeStackView)
        view.addSubview(continueButton)
    }
    
    
    func setContstraints(){
        NSLayoutConstraint.activate([
            labelStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 116),
            labelStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -639),
            labelStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            labelStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            
            verificationTypeStackView.topAnchor.constraint(equalTo: labelStackView.bottomAnchor, constant: 40),
            verificationTypeStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -439),
            verificationTypeStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24 ),
            verificationTypeStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            
            continueButton.topAnchor.constraint(equalTo: verificationTypeStackView.bottomAnchor, constant: 333),
            continueButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            continueButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            continueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        
        ])
    }

}
