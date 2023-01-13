//
//  SearchViewController.swift
//  fitApp
//
//  Created by Artyom Prima on 06.01.2023.
//

import UIKit

class SearchViewController: UIViewController {
    
    let gymsTableView: UITableView = {
        let tableView = UITableView()
        tableView.rowHeight = 96
        tableView.backgroundColor = .clear
        tableView.register(GymViewCell.self, forCellReuseIdentifier: GymViewCell.identifier)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    
    var gyms: [Gym] = [
        Gym.init(name: "Deep Crazy", phoneNumber: "🔥 125 kcal     🕔 15min", avatar: UIImage.init(named: "image3"), level: "Beginner - Full body"),
        Gym.init(name: "Deep Amrap Burner", phoneNumber: "🔥 125 kcal     🕔 15min", avatar: UIImage.init(named: "image4"), level: "Beginner - Full body"),
        Gym.init(name: "Deep Butt Sculp", phoneNumber: "🔥 88 kcal     🕔 30min", avatar: UIImage.init(named: "image5"), level: "Beginner - Lower body"),
        Gym.init(name: "Deep Amrap Killer", phoneNumber: "🔥 250 kcal     🕔 25min", avatar: UIImage.init(named: "image6"), level: "Intermediate - Upper body"),
        Gym.init(name: "Deep Amrap Blaster", phoneNumber: "🔥 125 kcal     🕔 15min", avatar: UIImage.init(named: "image7"), level: "Intermediate - Full body"),
        Gym.init(name: "Deep Crazy", phoneNumber: "🔥 125 kcal     🕔 15min", avatar: UIImage.init(named: "image3"), level: "Beginner - Full body"),
        Gym.init(name: "Deep Amrap Burner", phoneNumber: "🔥 125 kcal     🕔 15min", avatar: UIImage.init(named: "image4"), level: "Beginner - Full body"),
        Gym.init(name: "Deep Butt Sculp", phoneNumber: "🔥 88 kcal     🕔 30min", avatar: UIImage.init(named: "image5"), level: "Beginner - Lower body"),
        Gym.init(name: "Deep Amrap Killer", phoneNumber: "🔥 250 kcal     🕔 25min", avatar: UIImage.init(named: "image6"), level: "Intermediate - Upper body"),
        Gym.init(name: "Deep Amrap Blaster", phoneNumber: "🔥 125 kcal     🕔 15min", avatar: UIImage.init(named: "image7"), level: "Intermediate - Full body")
    ]
    
    let searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.backgroundImage = UIImage()
        searchBar.searchTextField.backgroundColor = #colorLiteral(red: 0.1172908619, green: 0.1580463946, blue: 0.2334932983, alpha: 1)
        searchBar.searchTextField.textColor = .white
        searchBar.searchTextField.attributedPlaceholder = NSAttributedString(string: "Search", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        searchBar.searchTextField.layer.borderColor = UIColor.white.cgColor
        searchBar.searchTextField.layer.borderWidth = 1
        searchBar.searchTextField.layer.cornerRadius = 12
        searchBar.searchTextField.clipsToBounds = true
        searchBar.searchTextField.leftView?.tintColor = .white
        searchBar.heightAnchor.constraint(equalToConstant: 56).isActive = true
        return searchBar
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
        view.addSubview(searchBar)
        view.addSubview(gymsTableView)
        gymsTableView.delegate = self
        gymsTableView.dataSource = self
        setContrainsts()

        
    }
    
    func setContrainsts() {
        NSLayoutConstraint.activate([
            
            searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            searchBar.topAnchor.constraint(equalTo: view.topAnchor, constant: 112),
            searchBar.heightAnchor.constraint(equalToConstant: 56)
        ])
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        gymsTableView.frame = CGRect(x: 0, y: 172, width: view.bounds.width, height: view.bounds.height - 192)
    }
}

extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gyms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell  {
        let cell = tableView.dequeueReusableCell(withIdentifier: GymViewCell.identifier, for: indexPath) as! GymViewCell
        cell.backgroundColor = .clear
        cell.nameLabel.text = gyms[indexPath.row].name
        cell.avatarImageView.image = gyms[indexPath.row].avatar
        cell.phoneNumberLabel.text = gyms[indexPath.row].phoneNumber
        cell.levelLabel.text = gyms[indexPath.row].level
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailGymVC = DetailGymViewController()
        navigationController?.pushViewController(detailGymVC, animated: true)
    }
}

