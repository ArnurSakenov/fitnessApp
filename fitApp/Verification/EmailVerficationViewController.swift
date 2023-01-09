//
//  EmailVerficationViewController.swift
//  fitApp
//
//  Created by Arnur Sakenov on 09.01.2023.
//

import UIKit

class EmailVerficationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
        title = "Phone Number"
        navigationController?.navigationBar.largeTitleTextAttributes =
        [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.prefersLargeTitles = true
        
        
        // Do any additional setup after loading the view.
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.prefersLargeTitles = false
    }
    private let verifyButton: UIButton = {
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
    
    private let methodLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 16)
       
        label.text = "We're going to send you a verification code to confirm your identity"
        label.textColor = .white
        label.layer.opacity = 0.5
        return label
    }()
    
    private let phoneTextField: UITextField = {
       let field = UITextField()
        field.backgroundColor = .green
        return field
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
            methodLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -639),
            methodLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            methodLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            
           
            
            phoneTextField.topAnchor.constraint(equalTo: methodLabel.bottomAnchor, constant: 40),
            phoneTextField.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -439),
            phoneTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24 ),
            phoneTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            
            verifyButton.topAnchor.constraint(equalTo: phoneTextField.bottomAnchor, constant: 333),
            verifyButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            verifyButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            verifyButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
            
            
        
        ])
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
