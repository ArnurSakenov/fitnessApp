//
//  MoreArticleTableViewCell.swift
//  fitApp
//
//  Created by Arnur Sakenov on 12.01.2023.
//

import UIKit

class MoreArticleTableViewCell: UITableViewCell {
    static let identifier = "tableCell"
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
        addSubViews()
        setConstraints()
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

     let articleThesisCell: UILabel = {
         let label = UILabel()
         
         label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 0.973, green: 0.98, blue: 0.988, alpha: 1)
        label.font = UIFont(name: "SFProDisplay-Bold", size: 14)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.17

        // Line height: 20 pt

        label.attributedText = NSMutableAttributedString(string: "The Power of Dirt: The Benefits of Outdoor Workouts ", attributes: [NSAttributedString.Key.kern: 0.2, NSAttributedString.Key.paragraphStyle: paragraphStyle])
         return label
     }()
     let articleDateCell: UILabel = {
         let label = UILabel()
         label.text = "November 14, 2021 3 min read"
         label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 0.58, green: 0.639, blue: 0.722, alpha: 1)
        label.font = UIFont(name: "SFProDisplay-Regular", size: 12)
         label.textAlignment = .left
        
         return label
     }()
    var articleImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "articleImage")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 8
        imageView.clipsToBounds = true
        imageView.layer.borderWidth = 1
        return imageView
    }()
    private var StackView: UIStackView = {
        let stack = UIStackView ()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.clipsToBounds = true
        stack.spacing = 22
        return stack
    }()
    
    func addSubViews() {
        contentView.addSubview(StackView)
        contentView.addSubview(articleImage)
        StackView.addArrangedSubview(articleThesisCell)
        StackView.addArrangedSubview(articleDateCell)
    }
    
    func setConstraints(){
       
        NSLayoutConstraint.activate([
            StackView.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 8),
            StackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            StackView.widthAnchor.constraint(equalToConstant: 211),
            StackView.heightAnchor.constraint(equalToConstant: 64),
            
            articleImage.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 8),
            articleImage.heightAnchor.constraint(equalToConstant: 72),
            articleImage.widthAnchor.constraint(equalToConstant: 100),
            articleImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
         
            
        ])
    }
}
