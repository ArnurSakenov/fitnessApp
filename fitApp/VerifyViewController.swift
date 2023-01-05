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
    func addSubviews(){
        view.addSubview(continueButton)
       
    }
    
    func setContstraints(){
        NSLayoutConstraint.activate([
            continueButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            continueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            continueButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            continueButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -500)
        
        ])
    }

}
