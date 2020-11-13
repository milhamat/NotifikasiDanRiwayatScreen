//
//  CategoryCell.swift
//  NotifikasiDanRiwayatScreen
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 13/11/20.
//

import UIKit

class CategoryViewCell: UICollectionViewCell {
    
    let collectionImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        self.backgroundColor = UIColor(red: 0.94, green: 0.89, blue: 0.87, alpha: 1.00)
        
        self.addSubview(collectionImage)
        
        self.collectionImage.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide)
            make.left.equalTo(self.safeAreaLayoutGuide).offset(20)
            make.right.equalTo(self.safeAreaLayoutGuide).offset(-20)
            make.bottom.equalTo(self.safeAreaLayoutGuide)
        }
    }
}
