//
//  DetailGymViewController.swift
//  fitApp
//
//  Created by Mereke on 13.01.2023.
//

import UIKit

class DetailGymViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
//        navigationItem.hidesBackButton = true
        
        let gymImageView = UIImageView()
        gymImageView.contentMode = .scaleAspectFill
        gymImageView.translatesAutoresizingMaskIntoConstraints = false
        gymImageView.image = UIImage(named: "gymPic")
        view.addSubview(gymImageView)
        
        tabBarController?.tabBar.isHidden = true
        
        let detailsStackView = UIStackView()
        detailsStackView.translatesAutoresizingMaskIntoConstraints = false
        detailsStackView.axis = .vertical
        detailsStackView.spacing = 8
        
        let gymNameLabel = UILabel()
        gymNameLabel.text = "Mid City Gym & Training"
        gymNameLabel.font = UIFont.boldSystemFont(ofSize: 24)
        gymNameLabel.textColor = .white
        gymNameLabel.textAlignment = .left
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 4
        
        let descriptionLabel = UILabel()
        descriptionLabel.text = "Established in 1962, Mid City Gym is the Longest Running Gym in the Country! It is currently owned and operated since 1989 by Vince Consalvo, former physique competitor, judge, equipment analyst, bodybuilding historian."
        let attributedString = NSMutableAttributedString(string: descriptionLabel.text!)
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attributedString.length))
        descriptionLabel.attributedText = attributedString
        descriptionLabel.numberOfLines = 0
        descriptionLabel.font = UIFont.systemFont(ofSize: 14)
        descriptionLabel.layer.opacity = 0.5
        descriptionLabel.textColor = .white
        descriptionLabel.textAlignment = .left
        
        detailsStackView.addArrangedSubview(gymNameLabel)
        detailsStackView.addArrangedSubview(descriptionLabel)
        view.addSubview(detailsStackView)
        
        let bottomBar = UIView()
        bottomBar.translatesAutoresizingMaskIntoConstraints = false
        bottomBar.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
        view.addSubview(bottomBar)
        
        let viewScheduleButton = UIButton()
        viewScheduleButton.translatesAutoresizingMaskIntoConstraints = false
        viewScheduleButton.setTitle("View Schedule", for: .normal)
        viewScheduleButton.setTitleColor(.white, for: .normal)
        viewScheduleButton.backgroundColor = #colorLiteral(red: 0.1320899725, green: 0.7720097303, blue: 0.3664159775, alpha: 1)
        viewScheduleButton.layer.cornerRadius = 16
        viewScheduleButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        bottomBar.addSubview(viewScheduleButton)
        
        let stackView = UIStackView()
        stackView.heightAnchor.constraint(equalToConstant: 72).isActive = true
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillProportionally
        stackView.alignment = .center
        stackView.spacing = 10
        
        stackView.layer.borderWidth = 1
        stackView.layer.cornerRadius = 12
        stackView.layer.borderColor = UIColor.white.withAlphaComponent(0.2).cgColor
        
        let iconStackView1 = UIStackView()
        iconStackView1.axis = .horizontal
        iconStackView1.distribution = .fillProportionally
        iconStackView1.alignment = .center
        iconStackView1.spacing = 10
        
        let newStackView = UIStackView()
        newStackView.axis = .vertical
        newStackView.translatesAutoresizingMaskIntoConstraints = false
        newStackView.distribution = .fillProportionally
        newStackView.alignment = .leading
        newStackView.spacing = 4
        
        let icon1 = UIImageView()
        icon1.image = UIImage(named: "calendar")
        icon1.widthAnchor.constraint(equalToConstant: 40).isActive = true
        icon1.heightAnchor.constraint(equalToConstant: 40).isActive = true
        let label1 = UILabel()
        label1.font = .systemFont(ofSize: 12)
        label1.layer.opacity = 0.5
        label1.textColor = .white
        label1.textAlignment = .left
        label1.text = "Open"
        let label2 = UILabel()
        label2.text = "Mon - Sat"
        label2.font = .systemFont(ofSize: 12, weight: .semibold)
        label2.textColor = .white
        label2.textAlignment = .left
        
        newStackView.addArrangedSubview(label1)
        newStackView.addArrangedSubview(label2)
        
        iconStackView1.addArrangedSubview(icon1)
        iconStackView1.addArrangedSubview(newStackView)
        
        let iconStackView2 = UIStackView()
        iconStackView2.axis = .horizontal
        iconStackView2.distribution = .fillProportionally
        iconStackView2.alignment = .center
        iconStackView2.spacing = 10
        
        let newStackView2 = UIStackView()
        newStackView2.axis = .vertical
        newStackView2.translatesAutoresizingMaskIntoConstraints = false
        newStackView2.distribution = .fillProportionally
        newStackView2.alignment = .leading
        newStackView2.spacing = 4
        
        let icon2 = UIImageView()
        icon2.image = UIImage(named: "time")
        icon2.widthAnchor.constraint(equalToConstant: 40).isActive = true
        icon2.heightAnchor.constraint(equalToConstant: 40).isActive = true
        let label3 = UILabel()
        label3.font  = .systemFont(ofSize: 12)
        label3.textColor = .white
        label3.textAlignment = .left
        label3.layer.opacity = 0.5
        label3.text = "Time"
        let label4 = UILabel()
        label4.text = "09:00 - 10:00 PM"
        label4.font  = .systemFont(ofSize: 12, weight: .semibold)
        label4.textColor = .white
        label4.textAlignment = .left
        
        newStackView2.addArrangedSubview(label3)
        newStackView2.addArrangedSubview(label4)
        
        iconStackView2.addArrangedSubview(icon2)
        iconStackView2.addArrangedSubview(newStackView2)
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layoutMargins.left = 16
        stackView.addArrangedSubview(iconStackView1)
        stackView.addArrangedSubview(iconStackView2)
        view.addSubview(stackView)
        
        let locationStackView = UIStackView()
        locationStackView.translatesAutoresizingMaskIntoConstraints = false
        locationStackView.axis = .vertical
        locationStackView.spacing = 8
        
        let locationLabel = UILabel()
        locationLabel.text = "Location"
        locationLabel.font = UIFont.boldSystemFont(ofSize: 20)
        locationLabel.textColor = .white
        locationLabel.textAlignment = .left
        
        let addressLabel = UILabel()
        addressLabel.text = "345 West 42nd Street New York, NY 10036"
        addressLabel.numberOfLines = 0
        addressLabel.font = UIFont.systemFont(ofSize: 14)
        addressLabel.layer.opacity = 0.5
        addressLabel.textColor = .white
        addressLabel.textAlignment = .left
        
        locationStackView.addArrangedSubview(locationLabel)
        locationStackView.addArrangedSubview(addressLabel)
        view.addSubview(locationStackView)
        
        let locationImageView = UIImageView()
        locationImageView.translatesAutoresizingMaskIntoConstraints = false
        locationImageView.image = UIImage(named: "map")
        view.addSubview(locationImageView)
        
        NSLayoutConstraint.activate([
            gymImageView.heightAnchor.constraint(equalToConstant: 200),
            gymImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            gymImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            gymImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            
            detailsStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            detailsStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            detailsStackView.topAnchor.constraint(equalTo: gymImageView.bottomAnchor, constant: 32),
            
            bottomBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomBar.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomBar.heightAnchor.constraint(equalToConstant: 48),
            
            viewScheduleButton.centerXAnchor.constraint(equalTo: bottomBar.centerXAnchor),
            viewScheduleButton.heightAnchor.constraint(equalToConstant: 56),
            viewScheduleButton.leadingAnchor.constraint(equalTo: bottomBar.leadingAnchor, constant: 32),
            viewScheduleButton.trailingAnchor.constraint(equalTo: bottomBar.trailingAnchor, constant: -32),
            viewScheduleButton.centerYAnchor.constraint(equalTo: bottomBar.centerYAnchor, constant: -24),
            
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            stackView.topAnchor.constraint(equalTo: detailsStackView.bottomAnchor, constant: 32),
            
            locationStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            locationStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            locationStackView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 24),
            
            locationImageView.heightAnchor.constraint(equalToConstant: 140),
            
            locationImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            locationImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            locationImageView.topAnchor.constraint(equalTo: locationStackView.bottomAnchor, constant: 16)
        ])
    }
}
