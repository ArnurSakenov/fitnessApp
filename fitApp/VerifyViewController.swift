//
//  VerifyViewController.swift
//  fitApp
//
//  Created by Arnur Sakenov on 05.01.2023.
//

import UIKit

class VerifyViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    
    private var collectionView: UICollectionView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
        title = "Verify your identity"
        
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.prefersLargeTitles = true
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: 327, height: 72)

        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        guard let collectionView = collectionView else {
            return
        }
       
        collectionView.register(VerificationMethodViewCell.self, forCellWithReuseIdentifier: VerificationMethodViewCell.identifier)
        collectionView.dataSource = self
        collectionView.delegate = self
//        mainCollectionView.dataSource = self
//        mainCollectionView.delegate = self
//        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        addSubviews()
        setContstraints()
        // Do any additional setup after loading the view.
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.prefersLargeTitles = false
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
    
//    private let mainCollectionView: UICollectionView = {
//        var collection = UICollectionView()
//        collection.translatesAutoresizingMaskIntoConstraints = false
//        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
//        layout.sectionInset = UIEdgeInsets(top:20, left: 10, bottom: 10, right: 10)
//        layout.itemSize = CGSize(width: 60, height: 60)
//        collection.backgroundColor = #colorLiteral(red: 0.1160912886, green: 0.1620997787, blue: 0.2332904935, alpha: 1)
//        collection = UICollectionView(frame: CGRect(x: 150, y: 150, width: 50, height: 50), collectionViewLayout: layout)
//        collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
//
//
//        return collection
//    }()
    

    
   
    
    private let methodLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 16)
       
        label.text = "Choose a method to verify your identity"
        label.textColor = .white
        label.layer.opacity = 0.5
        return label
    }()
    
//    private let verify: UILabel = {
//        let label = UILabel()
//        label.numberOfLines = 0
//        label.font = UIFont.systemFont(ofSize: 16)
//        label.backgroundColor = .green
//        label.text = "Verify your identity"
//        label.textColor = .white
//        label.layer.opacity = 0.5
//        return label
//    }()
    
    private let verificationTypeStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing =  16
        stack.clipsToBounds = true
        return stack
    }()
    
    private let labelStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 1
        stack.clipsToBounds = true
        return stack
    }()
    
    func addSubviews(){
//        labelStackView.addArrangedSubview(verify)
        labelStackView.addArrangedSubview(methodLabel)
        guard let collectionView = collectionView else {
            return
        }
        verificationTypeStackView.addArrangedSubview(collectionView)
//        verificationTypeStackView.addArrangedSubview(mainCollectionView )
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
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: VerificationMethodViewCell.identifier, for: indexPath) as! VerificationMethodViewCell
        if indexPath.row == 0 {
            cell.configure(label: "Email")
        } else {
            cell.configure(label: "Phone Number")
        }
        
        return cell
    }
}

//extension VerifyViewController: UICollectionViewDataSource, UICollectionViewDelegate {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 2
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath)
//        cell.backgroundColor = UIColor.blue
//        return cell
//    }
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        print("ough")
//    }
//
//
//}
