//
//  VerificationMethodViewCell.swift
//  fitApp
//
//  Created by Arnur Sakenov on 07.01.2023.
//

import UIKit

class VerificationMethodViewCell: UICollectionViewCell {
    static let identifier = "VerificationMethodViewCell"
    
    private let verificationIcon: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "house")
        image.backgroundColor = .yellow
        image.clipsToBounds = true
        return image
    }()
    
    private let verificationNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Email"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .green
        label.textColor = UIColor(red: 0.973, green: 0.98, blue: 0.988, alpha: 1)
        label.font = UIFont(name: "SFProDisplay-Bold", size: 14)
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.layer.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
          addSubviews()
         setupConstraints()
        
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        verificationIcon.frame = CGRect(x: 0, y: 0, width: 48, height: 48)
        verificationNameLabel.frame = CGRect(x: 0, y: 0, width: 36, height: 20)
    }
    public func configure(label: String){
        verificationNameLabel.text = label
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        verificationNameLabel.text = nil 
    }
    private func setupConstraints() {
        NSLayoutConstraint.activate([
           
            verificationNameLabel.widthAnchor.constraint(equalToConstant: 111),
            verificationNameLabel.heightAnchor.constraint(equalToConstant: 38),
            verificationNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 17),
            verificationNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 80),
            verificationNameLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 35),
            
            verificationIcon.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            verificationIcon.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            verificationIcon.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 12),
            
            verificationIcon.widthAnchor.constraint(equalToConstant: 48),
            verificationIcon.heightAnchor.constraint(equalToConstant: 48)
        ])
    }
    
    func addSubviews(){
        contentView.addSubview(verificationIcon)
        contentView.addSubview(verificationNameLabel)
      contentView.clipsToBounds = true
    }
}

//func setContstraints(){
//    NSLayoutConstraint.activate([
//
//
//
//
//
//    ])
//}

