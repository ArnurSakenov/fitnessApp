//
//  ExactArticleViewController.swift
//  fitApp
//
//  Created by Arnur Sakenov on 12.01.2023.
//

import UIKit

class ExactArticleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.foregroundColor : UIColor.white ]
        
        view.backgroundColor = #colorLiteral(red: 0.06831752509, green: 0.09892357141, blue: 0.1700796187, alpha: 1)
       
        addSubViews()
        setConstraints()
      
    }
    private var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(MoreArticleTableViewCell.self, forCellReuseIdentifier: MoreArticleTableViewCell.identifier)
        
        tableView.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
        return tableView
    }()
   
  
  
    private let articleThesis: UILabel = {
         let label = UILabel()
         label.text = "The Power of Dirt: The Benefits of Outdoor Workouts "
         label.translatesAutoresizingMaskIntoConstraints = false
         label.font = .systemFont(ofSize: 18, weight: .semibold)
         label.textColor = .white
         label.textAlignment = .left
        label.numberOfLines = 2
         return label
     }()
    private let articleDate: UILabel = {
         let label = UILabel()
         label.text = "November 14, 2021 3 min read"
         label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 0.58, green: 0.639, blue: 0.722, alpha: 1)
        label.font = UIFont(name: "SFProDisplay-Regular", size: 12)
         label.textAlignment = .left
        
         return label
     }()
   private var backgroundImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "blogBackground")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 8
        imageView.clipsToBounds = true
        imageView.layer.borderWidth = 1
        return imageView
    }()
    private var topStackView: UIStackView = {
        let stack = UIStackView ()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        
        stack.spacing = 22
        return stack
    }()
    func addSubViews() {
        
        topStackView.addArrangedSubview(backgroundImage)
        topStackView.addArrangedSubview(articleThesis)
        topStackView.addArrangedSubview(articleDate)
        view.addSubview(topStackView)
        view.addSubview(tableView)
    }
    
    func setConstraints(){
       
        NSLayoutConstraint.activate([
            topStackView.topAnchor.constraint(equalTo: view.topAnchor,constant: 112),
            topStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -312),
            topStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 24),
            topStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -24),
            
            tableView.topAnchor.constraint(equalTo: view.topAnchor,constant: 558),
            tableView.heightAnchor.constraint(equalToConstant: 184),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 24),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -24)
            
        ])
    }


}
