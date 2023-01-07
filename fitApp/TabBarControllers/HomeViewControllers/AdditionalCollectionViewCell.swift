//
//  AdditionalCollectionViewCell.swift
//  fitApp
//
//  Created by Artyom Prima on 06.01.2023.
//

import UIKit

class AdditionalCollectionViewCell: UICollectionViewCell {
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupConstraints()
        addSubviews()
        contentView.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
    }

    required init?(coder: NSCoder) {
        fatalError("lol")
    }
    
    var backgroundImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 8
        imageView.clipsToBounds = true
        imageView.layer.borderWidth = 1
        
        return imageView
    }()
    
    let nameTraining: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 18, weight: .bold)
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
    
    let levelTraining: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 12, weight: .regular)
        label.textColor = .gray
        label.textAlignment = .left
        
        return label
    }()
    
    let timeStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
//        stack.alignment = .leading
        stack.distribution = .fillEqually
        stack.spacing = 10
        
        return stack
    }()
    
    let nameStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        stack.spacing = 1
        return stack
    }()
    
    let fullStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fill
        stack.spacing = 26
        return stack
    }()
    
    func addSubviews(){
        contentView.addSubview(backgroundImage)
        contentView.addSubview(timeStackView)
        contentView.addSubview(nameStackView)
        contentView.addSubview(fullStackView)
        timeStackView.addArrangedSubview(kcalTraining)
        timeStackView.addArrangedSubview(timeTraining)
        nameStackView.addArrangedSubview(nameTraining)
        nameStackView.addArrangedSubview(timeStackView)
        nameStackView.addArrangedSubview(levelTraining)
        fullStackView.addArrangedSubview(backgroundImage)
        fullStackView.addArrangedSubview(nameStackView)
    }
    
    private func setupConstraints() {
        contentView.addSubview(backgroundImage)
        NSLayoutConstraint.activate([
           
            backgroundImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 4),
            backgroundImage.widthAnchor.constraint(equalToConstant: contentView.frame.height),
            backgroundImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    public func configCell(exam: AdditionalTraining) {
        backgroundImage.image = UIImage(named: exam.image)
        nameTraining.text = exam.nameTraining
        kcalTraining.text = "🔥\(exam.calories)"
        timeTraining.text = "🕐\(exam.timeTrainig)"
        levelTraining.text = exam.levelTraining
    }
}
