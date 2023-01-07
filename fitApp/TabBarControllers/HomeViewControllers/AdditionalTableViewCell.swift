//
//  AdditionalTableViewCell.swift
//  fitApp
//
//  Created by Artyom Prima on 06.01.2023.
//

import UIKit

class AdditionalTableViewCell: UITableViewCell {
    
    static var identifier = "cell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview()
        setConstraints()
        contentView.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
  
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 8
        let category = UICollectionView(
            frame: .zero,
            collectionViewLayout: layout)
        //весь контент внутри коллекции
        category.contentInset = UIEdgeInsets(top: 0, left: 36, bottom: 0, right: 24)
        category.translatesAutoresizingMaskIntoConstraints = false
        category.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
        category.register(AdditionalCollectionViewCell.self, forCellWithReuseIdentifier: identifier)

        return category
    }()
    
    func addSubview(){
        contentView.addSubview(collectionView)
        contentView.addSubview(additionalLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let additionalLabel: UILabel = {
        let label = UILabel()
        label.text = "Additional training"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.textColor = .white
        label.textAlignment = .left
        return label
    }()
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            additionalLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 6),
            additionalLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 36),
            additionalLabel.trailingAnchor.constraint(equalTo: collectionView.trailingAnchor),
            
            collectionView.topAnchor.constraint(equalTo: additionalLabel.bottomAnchor, constant: 8),
            collectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 6),
            collectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -6),
            collectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
    }
}

extension AdditionalTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
  
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        return CGSize(width: collectionView.frame.width - 60, height: 86)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        exampleAdditionalTraining.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier:  "cell", for: indexPath) as? AdditionalCollectionViewCell else {return UICollectionViewCell()}
        cell.configCell(exam: exampleAdditionalTraining[indexPath.item])
        return cell
    }
}
