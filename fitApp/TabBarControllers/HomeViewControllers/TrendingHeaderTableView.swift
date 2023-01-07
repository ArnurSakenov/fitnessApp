//
//  TrendingHeaderTableView.swift
//  fitApp
//
//  Created by Artyom Prima on 06.01.2023.
//

import UIKit

class TrendingHeaderTableView: UITableViewHeaderFooterView {

    let photoIdent = "photoCell"
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setConstraints()
        contentView.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var backgroundImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "imageHeader")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 8
        imageView.clipsToBounds = true
        imageView.layer.borderWidth = 1
        return imageView
    }()
    
    let trendingLabel: UILabel = {
        let label = UILabel()
        label.text = "Trending Workouts 🔥"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 18, weight: .semibold)
        label.textColor = .white
        label.textAlignment = .left
        return label
    }()
    
    var forView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.1172908619, green: 0.1580463946, blue: 0.2334932983, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.layer.cornerRadius = 10
        view.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]

        return view
    }()
    
    let nameTraining: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16, weight: .bold)
        label.textColor = .white
        label.textAlignment = .left
        
        return label
    }()
    
    let timeTraining: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 12, weight: .semibold)
        label.textColor = .white
        label.textAlignment = .left
        
        return label
    }()
    
    let kcalTraining: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 12, weight: .semibold)
        label.textColor = .white
        label.textAlignment = .left
        
        return label
    }()
    
    let timeStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 10
        
        return stack
    }()
    
    let nameStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        stack.spacing = 8
        return stack
    }()
    
    func setConstraints(){
        contentView.addSubview(trendingLabel)
        contentView.addSubview(backgroundImage)
        contentView.addSubview(forView)
        forView.addSubview(timeStackView)
        forView.addSubview(nameStackView)
        
        timeStackView.addArrangedSubview(kcalTraining)
        timeStackView.addArrangedSubview(timeTraining)
        
        nameStackView.addArrangedSubview(nameTraining)
        nameStackView.addArrangedSubview(timeStackView)
        NSLayoutConstraint.activate([
            trendingLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 26),
            trendingLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 36),
            trendingLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),

            backgroundImage.topAnchor.constraint(equalTo: trendingLabel.bottomAnchor, constant: 16),
            backgroundImage.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            
            forView.topAnchor.constraint(equalTo: backgroundImage.topAnchor, constant: 130),
            forView.leadingAnchor.constraint(equalTo: backgroundImage.leadingAnchor),
            forView.trailingAnchor.constraint(equalTo: backgroundImage.trailingAnchor),
            forView.bottomAnchor.constraint(equalTo: backgroundImage.bottomAnchor),
            
            nameStackView.topAnchor.constraint(equalTo: forView.topAnchor, constant: 10),
    
            nameStackView.leadingAnchor.constraint(equalTo: forView.leadingAnchor, constant: 22),
            nameStackView.trailingAnchor.constraint(equalTo: forView.trailingAnchor, constant: -150),
            nameStackView.bottomAnchor.constraint(equalTo: forView.bottomAnchor, constant: -16)
        ])
    }
    
    func config(info: AdditionalTraining){
        backgroundImage.image = UIImage(named: info.imageAmrap)
        nameTraining.text = info.nameTraining
        kcalTraining.text = "🔥\(info.calories)"
        timeTraining.text = "🕐\(info.timeTrainig)"
    }

}


