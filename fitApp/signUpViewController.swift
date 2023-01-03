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
    
    
    private let userNameField: UITextField = {
        let login = UITextField()
        login.translatesAutoresizingMaskIntoConstraints = false
        login.backgroundColor = #colorLiteral(red: 0.1160912886, green: 0.1620997787, blue: 0.2332904935, alpha: 1)
        login.leftViewMode = .always
        login.attributedPlaceholder = NSAttributedString (
            string: "Username",
            attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.58187747, green: 0.6370299459, blue: 0.7215286493, alpha: 1)])
        login.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: login.frame.height))
        login.keyboardType = .emailAddress
        login.textColor = .white
        login.font = UIFont.systemFont(ofSize: 16)
        login.autocapitalizationType = .none
        login.returnKeyType = .done
        login.layer.cornerRadius = 8
        login.clipsToBounds = true
        return login
        
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
        
        return password
        
    }()
    private let signEmailButton: UIButton = {
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
    
    private let signGoogleButton: UIButton = {
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
    
    var buttonStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        //stack.alignment = .center
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 12
        stack.clipsToBounds = true
        return stack
    }()

    private let signUpWithEmailLabel: UILabel = {
        let label = UILabel()
        label.text = "Or sign up with email"
        label.textColor = .gray
       
        return label
    }()
    
    var signInButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign In", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        button.setTitleColor(#colorLiteral(red: 0.1551918685, green: 0.7838412523, blue: 0.2506273389, alpha: 1), for: .normal)
        button.addTarget(nil, action: #selector(signIn), for: .touchUpInside)
        return button
    }()
    
    var haveAccountLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.textColor = .white
        label.text = "Already have an account?"
        return label
    }()
    
    var policyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.textColor = .white
        label.text = "By continuing forwards, you agree to Fitline's Privacy Policy and Terms & Conditions "
        return label
    }()
    
    @objc func signIn (){
        let signIn = signEmailViewController()
        navigationController?.pushViewController(signIn, animated: true)
        
    }
    
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
     
        
        buttonStackView.addArrangedSubview(signEmailButton)
        buttonStackView.addArrangedSubview(signGoogleButton)
        buttonStackView.addArrangedSubview(signUpWithEmailLabel)
        buttonStackView.addArrangedSubview(userNameField)
        buttonStackView.addArrangedSubview(emailField)
        buttonStackView.addArrangedSubview(passwordField)
        buttonStackView.addArrangedSubview(continueButton)
        labelStackView.addArrangedSubview(haveAccountLabel)
        labelStackView.addArrangedSubview(signInButton)
        contentView.addSubview(labelStackView)
        
        
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
            buttonStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -200),
            
            labelStackView.topAnchor.constraint(equalTo: buttonStackView.bottomAnchor, constant: 24),
            labelStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 70),
            labelStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -70),
            labelStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -150)
           
        
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
