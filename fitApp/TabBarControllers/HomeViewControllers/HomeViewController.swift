//
//  HomeViewController.swift
//  fitApp
//
//  Created by Artyom Prima on 06.01.2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    static let headerIdent = "TrendingHeaderTableView"
    static let cellIdent = "TrendingTableViewCell"
    static let cellsIdent = "AdditionalTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationItem.hidesBackButton = true
        view.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
        navigationItem.titleView = createCustomTitleView()
        view.addSubview(tableView)
        setupConstraints()
        self.tabBarController?.tabBar.unselectedItemTintColor = #colorLiteral(red: 0.3923566341, green: 0.4528311491, blue: 0.5454958677, alpha: 1)
        tableView.delegate = self
        tableView.dataSource = self
    }
   
    let tableView : UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
        tableView.register(TrendingHeaderTableView.self, forHeaderFooterViewReuseIdentifier: headerIdent)
        tableView.register(TrendingTableViewCell.self, forCellReuseIdentifier: cellIdent)
        tableView.register(AdditionalTableViewCell.self, forCellReuseIdentifier: cellsIdent)
        
        return tableView
    }()
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    func createCustomTitleView() -> UIView {
        
        let viewForNav = UIView()
        viewForNav.frame = CGRect(x: 22, y: 0, width: 300, height: 41)
//        view.backgroundColor = .red
        let nameLabel = UILabel()
        nameLabel.text = "Hello, Maria!"
        nameLabel.font = UIFont.systemFont(ofSize: 14)
        nameLabel.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        nameLabel.frame = CGRect(x: 0, y: 0, width: 300, height: 20)
        viewForNav.addSubview(nameLabel)
        
        let descriptionLabel = UILabel()
        descriptionLabel.text = "Stay Fit & Healthy"
        descriptionLabel.frame = CGRect(x: 0, y: 21, width: 300, height: 20)
        descriptionLabel.font = UIFont.systemFont(ofSize: 16)
        descriptionLabel.textColor = .white
        viewForNav.addSubview(descriptionLabel)
       
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "", style: .done, target: self, action: #selector(notificationTapped))
        self.navigationItem.rightBarButtonItem?.setBackgroundImage(UIImage(named: "icon1"), for: .normal, barMetrics: UIBarMetrics.default)
        
        return viewForNav
    }
    
    @objc func notificationTapped(){
        print("tap")
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: Self.cellIdent, for: indexPath) as! TrendingTableViewCell
            cell.collectionView.tag = indexPath.section
            return cell
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: Self.cellsIdent, for: indexPath) as! AdditionalTableViewCell
            cell.collectionView.tag = indexPath.section
            return cell
        default:
            assertionFailure("no registered section")
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard section == 0 else { return nil }
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: HomeViewController.headerIdent) as! TrendingHeaderTableView
        headerView.config(info: exampleAdditionalTraining[0])
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return section == 0 ? 300 : 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:  return 139
        case 1: return 214
        default:
            print("crach height for row at")
            return 140
        }
    }
}


    

  

