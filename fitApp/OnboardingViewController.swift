//
//  OnboardingViewController.swift
//  fitApp
//
//  Created by Artyom Prima on 29.12.2022.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        setConstraints()
        imageAnimated()
    }
    
    var backgroundImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "woman")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    var indicatorImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "indicatorWoman")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
    
    var labelStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 1
        stack.clipsToBounds = true
        return stack
    }()
    
    var signEmailButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(" Sign In with Email", for: .normal)
        button.setImage(UIImage(named: "mail"), for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.1551918685, green: 0.7838412523, blue: 0.2506273389, alpha: 1)
        button.addTarget(nil, action: #selector(signEmailTap), for: .touchUpInside)
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        return button
    }()
    
    var signUpButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign up", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        button.setTitleColor(#colorLiteral(red: 0.1551918685, green: 0.7838412523, blue: 0.2506273389, alpha: 1), for: .normal)
        button.addTarget(nil, action: #selector(signEmailTap), for: .touchUpInside)
        return button
    }()
    
    var notAmemberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.textColor = .white
        label.text = "Not a member?"
        return label
    }()
    
    var signGoogleButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(" Sign In with Google", for: .normal)
        button.setImage(UIImage(named: "google"), for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.addTarget(nil, action: #selector(signGoogleTap), for: .touchUpInside)
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        return button
    }()
    
    @objc func signEmailTap(){
        let emailVC = signEmailViewController()
        navigationController?.pushViewController(emailVC, animated: true)
    }
    
    @objc func signGoogleTap(){
        let googleVC = signGoogleViewController()
        navigationController?.pushViewController(googleVC, animated: true)
    }
    
    func addSubviews(){
        view.addSubview(backgroundImage)
        view.addSubview(contentView)
        
        contentView.addSubview(indicatorImage)
        contentView.addSubview(buttonStackView)
        contentView.addSubview(labelStackView)
        
        buttonStackView.addArrangedSubview(signEmailButton)
        buttonStackView.addArrangedSubview(signGoogleButton)
        
        labelStackView.addArrangedSubview(notAmemberLabel)
        labelStackView.addArrangedSubview(signUpButton)
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
        backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
        backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        
        contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        contentView.topAnchor.constraint(equalTo: view.topAnchor),
        contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        
        indicatorImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 580),
        indicatorImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 168),
        indicatorImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -168),
        
        buttonStackView.topAnchor.constraint(equalTo: indicatorImage.bottomAnchor, constant: 16),
        buttonStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
        buttonStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
        buttonStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -88),
        
        labelStackView.topAnchor.constraint(equalTo: buttonStackView.bottomAnchor, constant: 24),
        labelStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 104),
        labelStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -104),
        labelStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -42)
        ])
    }
    
    func imageAnimated(){
        
        Timer.scheduledTimer(withTimeInterval: 4, repeats: true){_ in
            if self.backgroundImage.image == UIImage(named: "woman"){
                self.backgroundImage.image = UIImage(named: "men")
                self.indicatorImage.image = UIImage(named: "indicatorMen")
            } else {
                    self.backgroundImage.image = UIImage(named: "woman")
                self.indicatorImage.image = UIImage(named: "indicatorWoman")
                
            }
        }
    }
    
}
