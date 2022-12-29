//
//  signUpViewController.swift
//  fitApp
//
//  Created by Arnur Sakenov on 29.12.2022.
//

import UIKit

class signUpViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
        
        self.title = "Sign Up"
        
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.foregroundColor : UIColor.white ]
        addSubviews()
        setContstraints()
        // Do any additional setup after loading the view.
    }
    var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var userNameField: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.text = "Username"
        field.backgroundColor = .yellow
        return field
        
    }()
    var signEmailButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(" Sign Up with Apple", for: .normal)
        button.setImage(UIImage(named: "apple"), for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
      
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        return button
    }()
    
    var signGoogleButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(" Sign Up with Google", for: .normal)
        button.setImage(UIImage(named: "google"), for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
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
    var fieldStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 12
        stack.clipsToBounds = true
        return stack
    }()
    
    func addSubviews(){
        view.addSubview(contentView)
        
        contentView.addSubview(buttonStackView)
        contentView.addSubview(fieldStackView)
        fieldStackView.addArrangedSubview(userNameField)
        buttonStackView.addArrangedSubview(signEmailButton)
        buttonStackView.addArrangedSubview(signGoogleButton)
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
            buttonStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -560),
            
            fieldStackView.topAnchor.constraint(equalTo: buttonStackView.bottomAnchor, constant: 45),
            fieldStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            fieldStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            fieldStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -560),
        
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
