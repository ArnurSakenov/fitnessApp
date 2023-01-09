//
//  AmrapViewController.swift
//  fitApp
//
//  Created by Artyom Prima on 08.01.2023.
//

import UIKit

class AmrapViewController: UIViewController {
    
    static let cellIdent = "AmrapTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        view.addSubview(tableView)
        setupConstraints()
        navBarSettings()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func navBarSettings(){
        self.title = "Amrap"
        view.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.foregroundColor : UIColor.white ]
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "", style: .done, target: self, action: #selector(settingsTapped))
        self.navigationItem.rightBarButtonItem?.setBackgroundImage(UIImage(named: "filter"), for: .normal, barMetrics: UIBarMetrics.default)
    }
    
    let tableView : UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
        tableView.register(AmrapTableViewCell.self, forCellReuseIdentifier: cellIdent)
        
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
    
    @objc func settingsTapped(){
        
    }
}

extension AmrapViewController: UITableViewDelegate, UITableViewDataSource{
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        <#code#>
//    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        exampleAdditionalTraining.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: AmrapViewController.cellIdent, for: indexPath) as! AmrapTableViewCell
        cell.config(info: exampleAdditionalTraining[indexPath.row])
        return cell
    }
    
}
 
