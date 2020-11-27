//
//  OnboardingView.swift
//  NotifikasiDanRiwayatScreen
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 27/11/20.
//

import UIKit
import SnapKit

class OnboardingView: UIView {
    
    let greatingStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 5.0
        return stackView
    }()
    
    let containerStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 3.0
        return stackView
    }()
    
    let skipButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Skip", for: .normal)
        button.tintColor = YNColor.lumut
        button.titleLabel?.font = UIFont.systemFont(ofSize: 19)
        return button
    }()
    
    let greattingLabel: UILabel = {
        let label = UILabel()
        label.text = "Halo"
        label.textColor = YNColor.lumut
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 24)
        return label
    }()
    
    let userLabel: UILabel = {
        let label = UILabel()
        label.text = "BeruangBesar21,"
        label.textColor = YNColor.lumut
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Selamat Datang di Dunia YANA!"
        label.textColor = YNColor.lumut
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 24)
        return label
    }()
    
    let detailLabel: UILabel = {
        let label = UILabel()
        label.text = "Jika kamu pernah merasa tidak memiliki support system yang baik, YANA adalah tempat yang tepat, dimana kamu bisa menjadi support system untuk dirimu sendiri dan orang lain."
        label.textColor = YNColor.lumut
        label.font = UIFont.systemFont(ofSize: 17)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    let lastLabel: UILabel = {
        let label = UILabel()
        label.text = "Ikuti tur singkat"
        label.textColor = YNColor.lumut
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    let nextButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.custom)
        let image = UIImage(named: "skipButton")
        button.setImage(image, for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        print(UIScreen.main.nativeBounds.height)
        if UIScreen.main.nativeBounds.height == 1136.0 {
            greattingLabel.font = UIFont.systemFont(ofSize: 17)
            userLabel.font = UIFont.boldSystemFont(ofSize: 17)
            welcomeLabel.font = UIFont.systemFont(ofSize: 17)
            detailLabel.font = UIFont.systemFont(ofSize: 15)
        }
        if UIScreen.main.nativeBounds.height == 1334.0 {
            greattingLabel.font = UIFont.systemFont(ofSize: 19)
            userLabel.font = UIFont.boldSystemFont(ofSize: 19)
            welcomeLabel.font = UIFont.systemFont(ofSize: 19)
            detailLabel.font = UIFont.systemFont(ofSize: 17)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        self.backgroundColor = YNColor.es
        
        self.addSubview(self.containerStackView)
        self.containerStackView.addArrangedSubview(self.greatingStackView)
        
        self.addSubview(self.skipButton) // aman
        
        self.greatingStackView.addArrangedSubview(self.greattingLabel)
        self.greatingStackView.addArrangedSubview(self.userLabel)
        self.containerStackView.addArrangedSubview(self.welcomeLabel)
        
        self.addSubview(self.detailLabel)
        self.addSubview(self.lastLabel)
        self.addSubview(self.nextButton)
        
        // MARK: - constraint
        self.skipButton.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(5)
            make.right.equalTo(self.safeAreaLayoutGuide).offset(-16)
        }
        
        self.containerStackView.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(self.frame.size.height * 0.25)//0.25 //0.317
            make.left.equalTo(self.safeAreaLayoutGuide).offset(35)
            make.right.equalTo(self.safeAreaLayoutGuide).offset(-35)
        }
        
        self.greatingStackView.snp.makeConstraints { (make) in
            make.top.left.right.equalTo(self.containerStackView)
        }
        
        self.welcomeLabel.snp.makeConstraints { (make) in
            make.bottom.equalTo(self.containerStackView)
            make.left.right.equalTo(self.containerStackView)
            make.size.equalTo(CGSize(width: 344, height: 26))
            if UIScreen.main.nativeBounds.height == 1136.0 {
                make.size.equalTo(CGSize(width: 344, height: 20))
            }
        }
        
        self.greattingLabel.snp.makeConstraints { (make) in
            make.left.equalTo(self.greatingStackView)
            make.size.equalTo(CGSize(width: self.frame.size.width * 0.27, height: 26))
            if UIScreen.main.nativeBounds.height == 1136.0 {
                make.size.equalTo(CGSize(width: 75, height: 20))
            }
        }
        
        self.userLabel.snp.makeConstraints { (make) in
            make.left.equalTo(greattingLabel.snp.right).offset(5)
        }
        
        self.detailLabel.snp.makeConstraints { (make) in
            make.top.equalTo(welcomeLabel.snp.bottom).offset(92) //32
            make.left.equalTo(self.safeAreaLayoutGuide).offset(self.frame.size.width * 0.091)
            make.right.equalTo(self.safeAreaLayoutGuide).offset(-(self.frame.size.width * 0.091))
            make.height.equalTo(130)
        }
        
        self.nextButton.snp.makeConstraints { (make) in
            make.bottom.equalTo(self.safeAreaLayoutGuide).offset(-16)
            make.right.equalTo(self.safeAreaLayoutGuide).offset(-16)
        }
        
        self.lastLabel.snp.makeConstraints { (make) in
            make.bottom.equalTo(self.safeAreaLayoutGuide).offset(-26)
            make.right.equalTo(nextButton.snp.left).offset(-8)
        }
    }
}
