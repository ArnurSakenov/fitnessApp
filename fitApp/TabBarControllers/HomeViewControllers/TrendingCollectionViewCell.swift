//
//  TrendingCollectionViewCell.swift
//  fitApp
//
//  Created by Artyom Prima on 06.01.2023.
//

import UIKit

class TrendingCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupConstraints()
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
    
    var forView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.1172908619, green: 0.1580463946, blue: 0.2334932983, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.layer.cornerRadius = 10
        view.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]

        return view
    }()
    
    let typeWorkout: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14, weight: .bold)
        label.textColor = .white
        label.textAlignment = .left
        
        return label
    }()
    
    let countWorkout: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 10, weight: .semibold)
        label.textColor = .white
        label.textAlignment = .left
        
        return label
    }()
    
    let workoutStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 10
        
      
        return stack
    }()
    
    private func setupConstraints() {
        contentView.addSubview(backgroundImage)
        contentView.addSubview(forView)
        forView.addSubview(workoutStackView)
        workoutStackView.addArrangedSubview(typeWorkout)
        workoutStackView.addArrangedSubview(countWorkout)
        
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            forView.topAnchor.constraint(equalTo: backgroundImage.topAnchor, constant: 65),
            forView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            forView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            forView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            workoutStackView.topAnchor.constraint(equalTo: forView.topAnchor, constant: 6),
            workoutStackView.leadingAnchor.constraint(equalTo: forView.leadingAnchor, constant: 12),
            workoutStackView.trailingAnchor.constraint(equalTo: forView.trailingAnchor, constant: -12),
            workoutStackView.bottomAnchor.constraint(equalTo: forView.bottomAnchor, constant: -10)
           
        ])
    }
    
    public func configCell(exam: WorkoutTypes) {
        backgroundImage.image = UIImage(named: exam.image)
        typeWorkout.text = exam.name
        countWorkout.text = exam.count
    }
}
