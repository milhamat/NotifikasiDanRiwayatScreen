//
//  First.swift
//  NotifikasiDanRiwayatScreen
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 27/10/20.
//

import SnapKit
import UIKit

class FirstView: UIView {
    
    let greatingLabel: UILabel = {
        let label = UILabel()
        label.text = "Selamat Siang,"
        label.font = UIFont(name: "Helvetica", size: 28)
        label.textColor = .black
        return label
    }()
    
    let userNameLabel: UILabel = {
        let label = UILabel()
        label.text = "User Name!"
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.textColor = .black
        return label
    }()
    
    let detailLabel: UILabel = {
        let label = UILabel()
        label.text = "Bagaimana Kabarmu?"
        label.font = UIFont(name: "Helvetica", size: 24)
        label.textColor = .black
        return label
    }()
    
    let baikButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        let image = UIImage(named: "baik")?.withRenderingMode(.alwaysOriginal)
        button.setImage(image, for: .normal)
        return button
    }()
    
    let burukButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.custom)
        let image = UIImage(named: "buruk")
        button.setImage(image, for: .normal)
        return button
    }()
    
    let sangatBurukButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.custom)
        let image = UIImage(named: "sangatBuruk")
        button.setImage(image, for: .normal)
        return button
    }()
    
    let sangatBaikButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.custom)
        let image = UIImage(named: "sangatBaik")
        button.setImage(image, for: .normal)
        return button
    }()
    
    let biasaAjaButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.custom)
        let image = UIImage(named: "bAja")
        button.setImage(image, for: .normal)
        return button
    }()

    let faceImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "faceImage")
        return imageView
    }()
    
    let backImage: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 25
        view.backgroundColor = .white
        return view
    }()

    override init(frame: CGRect){
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        self.backgroundColor = UIColor(red: 0.94, green: 0.89, blue: 0.87, alpha: 1.00)
        
        self.addSubview(greatingLabel)
        self.addSubview(userNameLabel)
        
        self.addSubview(faceImage)
        self.addSubview(backImage)
        
        self.backImage.addSubview(detailLabel)
        self.backImage.addSubview(biasaAjaButton)
        self.backImage.addSubview(sangatBaikButton)
        self.backImage.addSubview(baikButton)
        self.backImage.addSubview(sangatBurukButton)
        self.backImage.addSubview(burukButton)
        
        self.greatingLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(105)
            make.left.equalTo(self.safeAreaLayoutGuide).offset(20)
        }
        
        self.userNameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(greatingLabel.snp.bottom).offset(5)
            make.left.equalTo(self.safeAreaLayoutGuide).offset(20)
        }
        
        self.faceImage.snp.makeConstraints { (make) in
            make.right.equalTo(self.safeAreaLayoutGuide).offset(90)
            make.top.equalTo(self.safeAreaLayoutGuide).offset(10)
        }
        
        self.backImage.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(210)
            make.left.equalTo(self.safeAreaLayoutGuide)
            make.right.equalTo(self.safeAreaLayoutGuide)
            make.bottom.equalTo(self.safeAreaLayoutGuide).offset(80)
        }
        
        self.detailLabel.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.backImage)
            make.top.equalTo(self.backImage).offset(60)
        }
        
        self.biasaAjaButton.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.backImage)
            make.bottom.equalTo(self.backImage).offset(-180)
            make.width.equalTo(80)
            make.height.equalTo(100)
        }
        
        self.baikButton.snp.makeConstraints { (make) in
            make.bottom.equalTo(biasaAjaButton.snp.top).offset(5)
            make.left.equalTo(self.backImage).offset(60)
            make.width.equalTo(80)
            make.height.equalTo(100)
        }
        
        self.sangatBaikButton.snp.makeConstraints { (make) in
            make.bottom.equalTo(biasaAjaButton.snp.top).offset(5)
            make.right.equalTo(self.backImage).offset(-60)
            make.width.equalTo(80)
            make.height.equalTo(100)
        }
        
        self.sangatBurukButton.snp.makeConstraints { (make) in
            make.bottom.equalTo(baikButton.snp.top).offset(-8)
            make.left.equalTo(self.backImage).offset(98)
            make.width.equalTo(80)
            make.height.equalTo(100)
        }
        
        self.burukButton.snp.makeConstraints { (make) in
            make.bottom.equalTo(sangatBaikButton.snp.top).offset(-8)
            make.right.equalTo(self.backImage).offset(-98)
            make.width.equalTo(80)
            make.height.equalTo(100)
        }
    }
}
