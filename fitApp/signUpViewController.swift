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
        addSubviews()
        // Do any additional setup after loading the view.
    }

    var signEmailButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(" Sign Up with Email", for: .normal)
        button.setImage(UIImage(named: "mail"), for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.1551918685, green: 0.7838412523, blue: 0.2506273389, alpha: 1)
      
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
    
    func addSubviews(){
        view.addSubview(signEmailButton)
        view.addSubview(signGoogleButton)
    }
    func setContstraints(){
        NSLayoutConstraint.activate([
        signEmailButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        signEmailButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        signEmailButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
        signEmailButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 100)
        
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
