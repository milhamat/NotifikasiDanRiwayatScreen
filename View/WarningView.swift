//
//  WarningView.swift
//  NotifikasiDanRiwayatScreen
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 13/11/20.
//

import UIKit
import SnapKit

class WarningView: UIView {
    
    let warningLabel: UILabel = {
        let label = UILabel()
        label.text = "Peringatan!"
        label.textColor = UIColor(red: 0.58, green: 0.04, blue: 0.04, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        label.textAlignment = .center
        return label
    }()
    
    let detailLabel: UILabel = {
        let label = UILabel()
        label.text = "Cerita-cerita dalam kategori ini mungkin dapat memicu keinginan untuk menyakiti diri sendiri."
        label.textColor = UIColor(red: 0.04, green: 0.22, blue: 0.22, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 17)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let confirmationButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Saya Mengerti", for: .normal)
        button.tintColor = .white
        button.backgroundColor = UIColor(red: 0.10, green: 0.38, blue: 0.49, alpha: 1.00)
        button.layer.cornerRadius = 8
        return button
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
        
        self.addSubview(self.warningLabel)
        self.addSubview(self.detailLabel)
        self.addSubview(self.confirmationButton)
        
        self.confirmationButton.snp.makeConstraints { (make) in
            let constBotPos = self.frame.size.height * 0.35
            make.bottom.equalTo(self.safeAreaLayoutGuide).offset(0-(constBotPos))
            make.centerX.equalTo(self.safeAreaLayoutGuide)
//            make.left.equalTo(self.safeAreaLayoutGuide).offset(16)
//            make.right.equalTo(self.safeAreaLayoutGuide).offset(-16)
            make.height.equalTo(40)
            make.width.equalTo(self.frame.size.width * 0.8)//
            
        }
        
        self.detailLabel.snp.makeConstraints { (make) in
            make.bottom.equalTo(confirmationButton.snp.top).offset(-30)
            make.centerX.equalTo(self.safeAreaLayoutGuide)
//            make.left.equalTo(self.safeAreaLayoutGuide).offset(24)
//            make.right.equalTo(self.safeAreaLayoutGuide).offset(-24)
            make.width.equalTo(self.frame.size.width * 0.8)//
            make.height.equalTo(70)
        }
        
        self.warningLabel.snp.makeConstraints { (make) in
            make.bottom.equalTo(detailLabel.snp.top).offset(-50)
            make.centerX.equalTo(self.safeAreaLayoutGuide)
            make.left.equalTo(self.safeAreaLayoutGuide).offset(16)
            make.right.equalTo(self.safeAreaLayoutGuide).offset(-16)
        }
    
    }
}

