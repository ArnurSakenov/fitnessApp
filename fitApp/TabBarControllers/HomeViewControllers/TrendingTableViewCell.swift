//
//  TrendingTableViewCell.swift
//  fitApp
//
//  Created by Artyom Prima on 06.01.2023.
//

import UIKit

class TrendingTableViewCell: UITableViewCell {

    static var identifier = "cell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview()
        setConstraints()
        contentView.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 16
        let category = UICollectionView(
            frame: .zero,
            collectionViewLayout: layout)
        //весь контент внутри коллекции
        category.contentInset = UIEdgeInsets(top: 0, left: 36, bottom: 0, right: 22)
        category.translatesAutoresizingMaskIntoConstraints = false
        category.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
        category.register(TrendingCollectionViewCell.self, forCellWithReuseIdentifier: identifier)

        return category
    }()
    
    func addSubview(){
        contentView.addSubview(collectionView)
        contentView.addSubview(trendingLabel)
    }
    
    let trendingLabel: UILabel = {
        let label = UILabel()
        label.text = "Workout types"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.textColor = .white
        label.textAlignment = .left
        return label
    }()
    
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            trendingLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            trendingLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 36),
            trendingLabel.trailingAnchor.constraint(equalTo: collectionView.trailingAnchor),
            
            collectionView.topAnchor.constraint(equalTo: trendingLabel.bottomAnchor, constant: 6),
            collectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
       
    }
}

extension TrendingTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
  
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        return CGSize(width: 141, height: collectionView.frame.height - 15)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        exampleAdditionalTraining.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier:  "cell", for: indexPath) as? TrendingCollectionViewCell else {return UICollectionViewCell()}
        cell.configCell(exam: exampleWorkoutTypes[indexPath.item])
        return cell
    }
}
