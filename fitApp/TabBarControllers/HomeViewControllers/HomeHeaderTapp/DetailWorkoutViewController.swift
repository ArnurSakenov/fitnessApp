//
//  DetailWorkoutViewController.swift
//  fitApp
//
//  Created by Artyom Prima on 09.01.2023.
//

import UIKit

class DetailWorkoutViewController: UIViewController {

    var workout: AdditionalTraining?
    static let cellIdent = "DetailWorkoutTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        navigationController?.isNavigationBarHidden = true
        view.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
        addSubviews()
        setupConstraints()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private let reserveButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("  Reserve  ", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
//        button.heightAnchor.constraint(equalToConstant: 56).isActive = true
        button.setTitleColor( .white, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.1320899725, green: 0.7720097303, blue: 0.3664159775, alpha: 1)
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        return button
    }()
    
    let priceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.textColor = .white
        label.textAlignment = .left
        label.text = "$69.00"
        return label
    }()
    
    let totalLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.textColor = .gray
        label.textAlignment = .left
        label.text = "Total"
        return label
    }()
    
    private let forView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
        return view
    }()
    
    let tableView : UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
        tableView.register(HeaderInfoWorkoutTableViewCell.self, forCellReuseIdentifier: cellIdent)

        return tableView
    }()
    
    let priceStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 1
        stack.distribution = .fillProportionally
        stack.clipsToBounds = true
        return stack
    }()
    
    let fullPriceStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 100
        stack.distribution = .fillEqually
        stack.clipsToBounds = true
        return stack
    }()
    
    func addSubviews(){
        view.addSubview(tableView)
        view.addSubview(forView)
        forView.addSubview(priceStackView)
        forView.addSubview(fullPriceStackView)
        priceStackView.addArrangedSubview(totalLabel)
        priceStackView.addArrangedSubview(priceLabel)
        fullPriceStackView.addArrangedSubview(priceStackView)
        fullPriceStackView.addArrangedSubview(reserveButton)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            forView.topAnchor.constraint(equalTo: view.topAnchor, constant: 772),
            forView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            forView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            forView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            
            fullPriceStackView.topAnchor.constraint(equalTo: forView.topAnchor, constant: 8),
            fullPriceStackView.leadingAnchor.constraint(equalTo: forView.leadingAnchor, constant: 24),
            fullPriceStackView.trailingAnchor.constraint(equalTo: forView.trailingAnchor, constant: -24),
            fullPriceStackView.bottomAnchor.constraint(equalTo: forView.bottomAnchor, constant: -16)
        ])
    }
}

extension DetailWorkoutViewController: UITableViewDelegate, UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier:  Self.cellIdent, for: indexPath) as? HeaderInfoWorkoutTableViewCell else {return UITableViewCell()}
        if let workout = workout {
            cell.headerImage.image = UIImage(named: workout.imageAmrap)
            cell.caloriesLabel.text = workout.calories
            cell.timeLabel.text = workout.timeTrainig
            cell.levelTraining.text = "  \(workout.levelTraining)  "
            cell.ratingTraining.text = "⭐️  \(workout.rating)  "
            cell.nameWorkoutLabel.text = workout.nameTraining
            cell.descriptionWorkoutLabel.text = workout.description
        }
        return cell
    }

}
   
