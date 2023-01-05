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
    
    private let methodLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "Choose a method to verify your identity"
        label.textColor = .white
        label.layer.opacity = 0.5
        return label
    }()
    
    private let labelStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing =  0
        stack.clipsToBounds = true
        return stack
    }()
    
    func addSubviews(){
        labelStackView.addArrangedSubview(identityLabel)
        labelStackView.addArrangedSubview(methodLabel)
        view.addSubview(labelStackView)
        view.addSubview(continueButton)
    }
    
    func setContstraints(){
        NSLayoutConstraint.activate([
            labelStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 110),
            labelStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -680),
            labelStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            labelStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        
        ])
    }

}
