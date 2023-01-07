//
//  signEmailViewController.swift
//  fitApp
//
//  Created by Artyom Prima on 29.12.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
        
        self.title = "Sign In"
        
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.foregroundColor : UIColor.white ]
        addSubviews()
        setContstraints()
        
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
    
    private let signEmailButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(" Sign In with Apple", for: .normal)
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
        button.setTitle(" Sign In with Google", for: .normal)
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
        button.setTitle("Sign In", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(nil, action: #selector(signIn), for: .touchUpInside)
        button.backgroundColor = #colorLiteral(red: 0.1320899725, green: 0.7720097303, blue: 0.3664159775, alpha: 1)
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
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
    
    private let signInWithEmailLabel: UILabel = {
        let label = UILabel()
        label.text = "———    Or sign in with email    ———"
        label.textAlignment = .center
        label.textColor = .white
        label.layer.opacity = 0.5
        return label
    }()
    
    var forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Forgot password?", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        button.setTitleColor(#colorLiteral(red: 0.1551918685, green: 0.7838412523, blue: 0.2506273389, alpha: 1), for: .normal)
        button.addTarget(nil, action: #selector(forgotPasswordTapped), for: .touchUpInside)
        return button
    }()
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .darkContent
    }
    
    var forgotPassword: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.textColor = .white
        label.text = "Don't have an account? "
        return label
    }()
    
    @objc func signIn(){
       
        let homeViewController = UINavigationController(rootViewController: HomeViewController())
        homeViewController.tabBarItem = UITabBarItem(
            title: "",
            image: UIImage(named: "home"),
            selectedImage: UIImage(named: "home1")
        )
        
        let searchViewController = UINavigationController(rootViewController: SearchViewController())
        searchViewController.tabBarItem = UITabBarItem(
            title: "",
            image: UIImage(named: "search"),
            selectedImage: UIImage(named: "search1")
        )
        
        let articleViewController = UINavigationController(rootViewController: ArticleViewController())
        articleViewController.tabBarItem = UITabBarItem(
            title: "",
            image: UIImage(named: "article"),
            selectedImage: UIImage(named: "article")
        )
        
        let profileViewController = UINavigationController(rootViewController: ProfileViewController())
        profileViewController.tabBarItem = UITabBarItem(
            title: "",
            image: UIImage(named: "profile"),
            selectedImage: UIImage(named: "profile1")
        )
        
        UITabBar.appearance().tintColor = #colorLiteral(red: 0.1551918685, green: 0.7838412523, blue: 0.2506273389, alpha: 1)
       
        let tabBarController = UITabBarController()
//        #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
        tabBarController.viewControllers = [homeViewController, searchViewController, articleViewController, profileViewController]
        
        navigationController?.pushViewController(tabBarController, animated: true)
        
    }
    
    @objc func forgotPasswordTapped(){
        let forgotPassword = ForgotPasswordViewController()
        navigationController?.pushViewController(forgotPassword, animated: true)
        
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
        buttonStackView.addArrangedSubview(signInWithEmailLabel)
        buttonStackView.addArrangedSubview(emailField)
        buttonStackView.addArrangedSubview(passwordField)
        buttonStackView.addArrangedSubview(continueButton)
        labelStackView.addArrangedSubview(forgotPasswordButton)
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
            buttonStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -300),
            
            labelStackView.topAnchor.constraint(equalTo: buttonStackView.bottomAnchor, constant: 24),
            labelStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 70),
            labelStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -70),
            labelStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -150)
        ])
    }
}


