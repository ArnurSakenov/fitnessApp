//
//  ArticleViewController.swift
//  fitApp
//
//  Created by Artyom Prima on 06.01.2023.
//

import UIKit

class ArticleViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Blog"
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.foregroundColor : UIColor.white ]
        
        view.backgroundColor = #colorLiteral(red: 0.06831752509, green: 0.09892357141, blue: 0.1700796187, alpha: 1)
        tableView.delegate = self
        tableView.dataSource = self
        addSubViews()
        setConstraints()
    }
  
    private let searchTextField: UITextField = {
        let login = UITextField()
        login.translatesAutoresizingMaskIntoConstraints = false
        login.backgroundColor = #colorLiteral(red: 0.1160912886, green: 0.1620997787, blue: 0.2332904935, alpha: 1)
        login.leftViewMode = .always
        login.attributedPlaceholder = NSAttributedString (
            string: "Search for a topic",
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
  
   private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Choice for you"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 18, weight: .semibold)
        label.textColor = .white
        label.textAlignment = .left
        return label
    }()
    private let articleThesis: UILabel = {
         let label = UILabel()
         label.text = "How Exercise Can Boost Mental Health in Young Adults"
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
        topStackView.addArrangedSubview(searchTextField)
        topStackView.addArrangedSubview(titleLabel)
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
    private var tableView: UITableView = {
        let tableView = UITableView()
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(MoreArticleTableViewCell.self, forCellReuseIdentifier: MoreArticleTableViewCell.identifier)
        
        
        return tableView
    }()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
  
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MoreArticleTableViewCell.identifier ,for: indexPath) as! MoreArticleTableViewCell
        cell.translatesAutoresizingMaskIntoConstraints = false 
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 88
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pushVc = ExactArticleViewController()
        navigationController?.pushViewController(pushVc, animated: true)
    }

}
