//
//  CategoryView.swift
//  NotifikasiDanRiwayatScreen
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 13/11/20.
//

import UIKit
import SnapKit

class CategoryView: UIView {
    
    let greatingLabel: UILabel = {
        let label = UILabel()
        label.text = "Bagaimana Perasaanmu ?"
        label.font = UIFont.systemFont(ofSize: 24)
        label.textColor = .black
        return label
    }()
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
       
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.register(CategoryViewCell.self, forCellWithReuseIdentifier: "collectionCell")
        collection.backgroundColor = UIColor(red: 0.94, green: 0.89, blue: 0.87, alpha: 1.00)
        collection.showsVerticalScrollIndicator = false
        return collection
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        self.backgroundColor = UIColor(red: 0.94, green: 0.89, blue: 0.87, alpha: 1.00)
        
        self.addSubview(greatingLabel)
        self.addSubview(collectionView)
        
        self.greatingLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(32)
            make.centerX.equalTo(self.safeAreaLayoutGuide)
        }
        
        self.collectionView.snp.makeConstraints { (make) in
            make.top.equalTo(greatingLabel.snp.bottom).offset(10)
            make.left.equalTo(self.safeAreaLayoutGuide)
            make.right.equalTo(self.safeAreaLayoutGuide)
            make.bottom.equalTo(self.safeAreaLayoutGuide)
        }
    }
}
