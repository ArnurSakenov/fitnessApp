//
//  DetailWorkoutTableViewCell.swift
//  fitApp
//
//  Created by Artyom Prima on 09.01.2023.
//

import UIKit

class HeaderInfoWorkoutTableViewCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
        addSubviews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let forView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.1160912886, green: 0.1620997787, blue: 0.2332904935, alpha: 1)
        view.layer.cornerRadius = 8
        
        return view
    }()
    
    private let caloriesImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "fire1")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let separatorImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "line")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let timeImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "time1")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let burnsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 12, weight: .regular)
        label.text = "Burns"
        label.textColor = .gray
        label.textAlignment = .left
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        return label
    }()
    
    let durationLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 12, weight: .regular)
        label.text = "Duration"
        label.textColor = .gray
        label.textAlignment = .left
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        return label
    }()
    
    var timeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14, weight: .bold)
        label.textColor = .white
        label.textAlignment = .left
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        return label
    }()
    
    let caloriesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14, weight: .bold)
        label.textColor = .white
        label.textAlignment = .left
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        return label
    }()
    
    let headerImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 8
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let trainerImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "trainer")
        imageView.layer.cornerRadius = 24
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    var trainerNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16, weight: .bold)
        label.textColor = .white
        label.textAlignment = .left
        label.text = "Tom Cruiser"
        
        return label
    }()
    
    var trainerStatusLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 12, weight: .regular)
        label.textColor = .gray
        label.textAlignment = .left
        label.text = "Expert Trainer"
        
        return label
    }()
    
    let trainerNameStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 1
        stack.distribution = .fillProportionally
        stack.clipsToBounds = true
        return stack
    }()
    
    let fullTrainerStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 16
        stack.distribution = .equalSpacing
        stack.clipsToBounds = true
        return stack
    }()
    
    private let followButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("  Follow  ", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 14, weight: .semibold)
        button.setTitleColor(#colorLiteral(red: 0.1320899725, green: 0.7720097303, blue: 0.3664159775, alpha: 1), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.1160912886, green: 0.1620997787, blue: 0.2332904935, alpha: 1)
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        return button
    }()
    
    let levelTraining: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 12, weight: .medium)
        label.textColor = .white
        label.textAlignment = .left
        label.layer.cornerRadius = 8
        label.layer.masksToBounds = true
        label.heightAnchor.constraint(equalToConstant: 32).isActive = true
        label.backgroundColor = #colorLiteral(red: 0.1160912886, green: 0.1620997787, blue: 0.2332904935, alpha: 1)
        return label
    }()
    
    let ratingTraining: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 12, weight: .regular)
        label.textColor = .gray
        label.textAlignment = .left
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        return label
    }()
    
    let headerStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 35
        stack.distribution = .equalSpacing
        stack.clipsToBounds = true
        return stack
    }()
    
    let birnsStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        stack.clipsToBounds = true
        return stack
    }()
    
    let fullBirnsStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .equalSpacing
        stack.clipsToBounds = true
        return stack
    }()
    
    let durationStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        stack.clipsToBounds = true
        return stack
    }()
    
    let fullDurationStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 13
        stack.distribution = .equalSpacing
        stack.clipsToBounds = true
        return stack
    }()
    
    let fullStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 60
        stack.distribution = .equalSpacing
        stack.clipsToBounds = true
        return stack
    }()
    
    var nameWorkoutLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textColor = .white
        label.textAlignment = .left
        label.clipsToBounds = true
        return label
    }()
    
    var descriptionWorkoutLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.textColor = .gray
        label.numberOfLines = 0
        label.textAlignment = .left
        label.clipsToBounds = true
        return label
    }()
    
    let descriptionStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 16
        stack.distribution = .fillProportionally
        stack.clipsToBounds = true
        return stack
    }()
    
    func addSubviews(){
        contentView.addSubview(headerImage)
        contentView.addSubview(headerStackView)
        contentView.addSubview(forView)
        contentView.addSubview(trainerNameStackView)
        contentView.addSubview(fullTrainerStackView)
        contentView.addSubview(separatorImage)
        
        trainerNameStackView.addArrangedSubview(trainerNameLabel)
        trainerNameStackView.addArrangedSubview(trainerStatusLabel)
        fullTrainerStackView.addArrangedSubview(trainerImage)
        fullTrainerStackView.addArrangedSubview(trainerNameStackView)
        fullTrainerStackView.addArrangedSubview(followButton)
        //
        forView.addSubview(fullBirnsStackView)
        forView.addSubview(birnsStackView)
        forView.addSubview(durationStackView)
        forView.addSubview(fullDurationStackView)
        forView.addSubview(fullStackView)
        forView.addSubview(descriptionStackView)
        
        descriptionStackView.addArrangedSubview(nameWorkoutLabel)
        descriptionStackView.addArrangedSubview(descriptionWorkoutLabel)
        
        fullStackView.addArrangedSubview(fullBirnsStackView)
        fullStackView.addArrangedSubview(fullDurationStackView)
        
        durationStackView.addArrangedSubview(durationLabel)
        durationStackView.addArrangedSubview(timeLabel)
        
        fullDurationStackView.addArrangedSubview(timeImage)
        fullDurationStackView.addArrangedSubview(durationStackView)
        
        birnsStackView.addArrangedSubview(burnsLabel)
        birnsStackView.addArrangedSubview(caloriesLabel)
        fullBirnsStackView.addArrangedSubview(caloriesImage)
        fullBirnsStackView.addArrangedSubview(birnsStackView)
        
        headerStackView.addArrangedSubview(levelTraining)
        headerStackView.addArrangedSubview(ratingTraining)
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            headerImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            headerImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            headerImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            
            headerStackView.topAnchor.constraint(equalTo: headerImage.bottomAnchor, constant: 60),
            headerStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            headerStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            
            descriptionStackView.topAnchor.constraint(equalTo: headerStackView.bottomAnchor, constant: 16),
            descriptionStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            descriptionStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            descriptionStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -260),
            
            forView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 180),
            forView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            forView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            forView.bottomAnchor.constraint(equalTo: headerStackView.topAnchor, constant: -30),
            
            fullBirnsStackView.topAnchor.constraint(equalTo: forView.topAnchor, constant: 16 ),
            fullBirnsStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 44),
            fullBirnsStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -235),
            fullBirnsStackView.bottomAnchor.constraint(equalTo: forView.bottomAnchor, constant: -16),
            
            fullStackView.topAnchor.constraint(equalTo: forView.topAnchor, constant: 16 ),
            fullStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 44),
            fullStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -44),
            fullStackView.bottomAnchor.constraint(equalTo: forView.bottomAnchor, constant: -16),
            
            fullTrainerStackView.topAnchor.constraint(equalTo: descriptionStackView.bottomAnchor, constant: 24),
            fullTrainerStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            fullTrainerStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            fullTrainerStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -194),
            
            separatorImage.topAnchor.constraint(equalTo: fullTrainerStackView.bottomAnchor, constant: 16),
            separatorImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            separatorImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
            
            
            
        ])
        
    }
    
    
}

