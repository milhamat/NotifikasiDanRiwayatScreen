//
//  ReportView.swift
//  NotifikasiDanRiwayatScreen
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 13/11/20.
//

import UIKit
import SnapKit

class ReportView: UIView {
    
    let detailLabel: UILabel = {
        let label = UILabel()
        label.text = "Laporkan"
        label.font = UIFont(name: "Helvatica", size: 12)
        label.textColor = .lightGray
        return label
    }()
    
    let saparatorImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Separator")
        return imageView
    }()
    
    let buttonContainerView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 14
        view.backgroundColor = UIColor(white: 1, alpha: 0.9)//.white//UIColor(red: 0.78, green: 0.78, blue: 0.78, alpha: 1.00)
//        view.alpha = 0.8
        return view
    }()
    
    let spamButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Spam", for: .normal)
        button.tintColor = UIColor(red: 0.00, green: 0.48, blue: 1.00, alpha: 1.00)
//        button.backgroundColor = .white
        return button
    }()
    
    let saparatorOneImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Separator")
        return imageView
    }()
    
    let violationOfIntellectualPropertyRightsButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Pelanggaran Hak kekayaan Intelektual", for: .normal)
        button.tintColor = UIColor(red: 0.00, green: 0.48, blue: 1.00, alpha: 1.00)
//        button.backgroundColor = .white
        return button
    }()
    
    let saparatorTwoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Separator")
        return imageView
    }()
    
    let hateSpeechAndSymbolsButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Simbol dan Ujaran Kebencian", for: .normal)
        button.tintColor = UIColor(red: 0.00, green: 0.48, blue: 1.00, alpha: 1.00)
//        button.backgroundColor = .white
        return button
    }()
    
    let saparatorThreeImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Separator")
        return imageView
    }()
    
    let nudityOrSexualActivityButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Ketelanjangan atau Aktivitas Seksual", for: .normal)
        button.tintColor = UIColor(red: 0.00, green: 0.48, blue: 1.00, alpha: 1.00)
//        button.backgroundColor = .white
        return button
    }()
    
    let saparatorFourImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Separator")
        return imageView
    }()
    
    let violenceOrDangerousOrganizationButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Kekerasan atau Organisasi Berbahaya", for: .normal)
        button.tintColor = UIColor(red: 0.00, green: 0.48, blue: 1.00, alpha: 1.00)
//        button.backgroundColor = .white
        return button
    }()
    
    let saparatorFiveImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Separator")
        return imageView
    }()
    
    let falseInformationButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Informasi Palsu", for: .normal)
        button.tintColor = UIColor(red: 0.00, green: 0.48, blue: 1.00, alpha: 1.00)
//        button.backgroundColor = .white
        return button
    }()
    
    let saparatorSixImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Separator")
        return imageView
    }()
    
    let promotingSomethingOrSellingButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Mempromisikan Sesuatu atau Berjualan", for: .normal)
        button.tintColor = UIColor(red: 0.00, green: 0.48, blue: 1.00, alpha: 1.00)
//        button.backgroundColor = .white
        return button
    }()
    
    let saparatorSevenImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Separator")
        return imageView
    }()
    
    let suicideOrSelfHarmButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Bunuh Diri atau Melukai diri", for: .normal)
        button.tintColor = UIColor(red: 0.00, green: 0.48, blue: 1.00, alpha: 1.00)
//        button.backgroundColor = .white
        return button
    }()
    
    let cencelButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Cencel", for: .normal)
        button.tintColor = UIColor(red: 0.00, green: 0.48, blue: 1.00, alpha: 1.00)
        button.layer.cornerRadius = 14
        button.backgroundColor = .white
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
        self.backgroundColor = UIColor(white: 1, alpha: 0.1) //.clear
        self.clearsContextBeforeDrawing = true
        self.isOpaque = false
        
        self.addSubview(self.cencelButton)
        
        self.addSubview(self.buttonContainerView)
        
        self.buttonContainerView.addSubview(self.detailLabel)
        
        self.buttonContainerView.addSubview(self.saparatorImage)
        self.buttonContainerView.addSubview(self.spamButton)
        
        self.buttonContainerView.addSubview(self.saparatorOneImage)
        self.buttonContainerView.addSubview(self.violationOfIntellectualPropertyRightsButton)
        
        self.buttonContainerView.addSubview(self.saparatorTwoImage)
        self.buttonContainerView.addSubview(self.hateSpeechAndSymbolsButton)
        
        self.buttonContainerView.addSubview(self.saparatorThreeImage)
        self.buttonContainerView.addSubview(self.nudityOrSexualActivityButton)
        
        self.buttonContainerView.addSubview(self.saparatorFourImage)
        self.buttonContainerView.addSubview(self.violenceOrDangerousOrganizationButton)
        
        self.buttonContainerView.addSubview(self.saparatorFiveImage)
        self.buttonContainerView.addSubview(self.falseInformationButton)
        
        self.buttonContainerView.addSubview(self.saparatorSixImage)
        self.buttonContainerView.addSubview(self.promotingSomethingOrSellingButton)
        
        self.buttonContainerView.addSubview(self.saparatorSevenImage)
        self.buttonContainerView.addSubview(self.suicideOrSelfHarmButton)
        
        self.cencelButton.snp.makeConstraints { (make) in
            make.bottom.equalTo(self.safeAreaLayoutGuide)
            make.left.equalTo(self.safeAreaLayoutGuide).offset(16)
            make.right.equalTo(self.safeAreaLayoutGuide).offset(-16)
            make.height.equalTo(56)// ganti
        }
        
        self.buttonContainerView.snp.makeConstraints { (make) in
            make.bottom.equalTo(cencelButton.snp.top).offset(-16)
            make.left.equalTo(self.safeAreaLayoutGuide).offset(16)
            make.right.equalTo(self.safeAreaLayoutGuide).offset(-16)
            make.size.equalTo(CGSize(width: 359, height: 494)) // ganti
        }
        
        self.detailLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.buttonContainerView)
            make.centerX.equalTo(self.buttonContainerView)
            make.height.equalTo(45)
        }
        
        self.saparatorImage.snp.makeConstraints { (make) in
            make.top.equalTo(detailLabel.snp.bottom)
            make.right.equalTo(self.buttonContainerView)
            make.left.equalTo(self.buttonContainerView)
        }
        //
        self.spamButton.snp.makeConstraints { (make) in
            make.top.equalTo(detailLabel.snp.bottom)
            make.left.equalTo(self.buttonContainerView)
            make.right.equalTo(self.buttonContainerView)
            make.height.equalTo(56)
        }
        //
        self.saparatorOneImage.snp.makeConstraints { (make) in
            make.top.equalTo(spamButton.snp.bottom)
            make.right.equalTo(self.buttonContainerView)
            make.left.equalTo(self.buttonContainerView)
        }
        
        self.violationOfIntellectualPropertyRightsButton.snp.makeConstraints { (make) in
            make.top.equalTo(spamButton.snp.bottom)
            make.left.equalTo(self.buttonContainerView)
            make.right.equalTo(self.buttonContainerView)
            make.height.equalTo(56)
        }
        self.saparatorTwoImage.snp.makeConstraints { (make) in
            make.top.equalTo(violationOfIntellectualPropertyRightsButton.snp.bottom)
            make.right.equalTo(self.buttonContainerView)
            make.left.equalTo(self.buttonContainerView)
        }
        //
        self.hateSpeechAndSymbolsButton.snp.makeConstraints { (make) in
            make.top.equalTo(violationOfIntellectualPropertyRightsButton.snp.bottom)
            make.left.equalTo(self.buttonContainerView)
            make.right.equalTo(self.buttonContainerView)
            make.height.equalTo(56)
        }
        self.saparatorThreeImage.snp.makeConstraints { (make) in
            make.top.equalTo(hateSpeechAndSymbolsButton.snp.bottom)
            make.right.equalTo(self.buttonContainerView)
            make.left.equalTo(self.buttonContainerView)
        }
        //
        self.nudityOrSexualActivityButton.snp.makeConstraints { (make) in
            make.top.equalTo(hateSpeechAndSymbolsButton.snp.bottom)
            make.left.equalTo(self.buttonContainerView)
            make.right.equalTo(self.buttonContainerView)
            make.height.equalTo(56)
        }
        self.saparatorFourImage.snp.makeConstraints { (make) in
            make.top.equalTo(nudityOrSexualActivityButton.snp.bottom)
            make.right.equalTo(self.buttonContainerView)
            make.left.equalTo(self.buttonContainerView)
        }
        //
        self.violenceOrDangerousOrganizationButton.snp.makeConstraints { (make) in
            make.top.equalTo(nudityOrSexualActivityButton.snp.bottom)
            make.left.equalTo(self.buttonContainerView)
            make.right.equalTo(self.buttonContainerView)
            make.height.equalTo(56)
        }
        self.saparatorFiveImage.snp.makeConstraints { (make) in
            make.top.equalTo(violenceOrDangerousOrganizationButton.snp.bottom)
            make.right.equalTo(self.buttonContainerView)
            make.left.equalTo(self.buttonContainerView)
        }
        //
        self.falseInformationButton.snp.makeConstraints { (make) in
            make.top.equalTo(violenceOrDangerousOrganizationButton.snp.bottom)
            make.left.equalTo(self.buttonContainerView)
            make.right.equalTo(self.buttonContainerView)
            make.height.equalTo(56)
        }
        self.saparatorSixImage.snp.makeConstraints { (make) in
            make.top.equalTo(falseInformationButton.snp.bottom)
            make.right.equalTo(self.buttonContainerView)
            make.left.equalTo(self.buttonContainerView)
        }
        //
        self.promotingSomethingOrSellingButton.snp.makeConstraints { (make) in
            make.top.equalTo(falseInformationButton.snp.bottom)
            make.left.equalTo(self.buttonContainerView)
            make.right.equalTo(self.buttonContainerView)
            make.height.equalTo(56)
        }
        self.saparatorSevenImage.snp.makeConstraints { (make) in
            make.top.equalTo(promotingSomethingOrSellingButton.snp.bottom)
            make.right.equalTo(self.buttonContainerView)
            make.left.equalTo(self.buttonContainerView)
        }
        //
        self.suicideOrSelfHarmButton.snp.makeConstraints { (make) in
            make.top.equalTo(promotingSomethingOrSellingButton.snp.bottom)
            make.left.equalTo(self.buttonContainerView)
            make.right.equalTo(self.buttonContainerView)
            make.height.equalTo(56)
        }
    }
}
