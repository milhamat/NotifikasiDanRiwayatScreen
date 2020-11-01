//
//  NotifikasiActivateView.swift
//  NotifikasiDanRiwayatScreen
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 01/11/20.
//

import UIKit
import SnapKit

class ActivateNotificationView: UIView{
    
    let notifBellImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "iconNoticationBell")
        return imageView
    }()
    
    let notifLabel: UILabel = {
        let label = UILabel()
        label.text = "Notifikasi"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textColor = .black
        return label
    }()
    
    let detailLabel: UILabel = {
        let label = UILabel()
        label.text = "Kami menyarankan kamu untuk mengaktifkan notifikasi agar mendapatkan pengalaman yang lebih baik."
        label.textAlignment = .center
        label.font = UIFont(name: "Helvetica", size: 17)
        label.numberOfLines = 0
        return label
    }()
    
    let activateButton: UIButton = {
        let botton = UIButton(type: UIButton.ButtonType.system)
        botton.setTitle("Aktifkan Notifikasi", for: .normal)
        botton.tintColor = .white
        botton.layer.cornerRadius = 8
        botton.backgroundColor = UIColor(red: 0.10, green: 0.38, blue: 0.49, alpha: 1.00)
        return botton
    }()
    
    let skipButton: UIButton = {
        let botton = UIButton(type: UIButton.ButtonType.system)
        botton.setTitle("Lewati", for: .normal)
        botton.tintColor = .black
        return botton
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
        
        self.addSubview(notifBellImage)
        self.addSubview(notifLabel)
        self.addSubview(detailLabel)
        self.addSubview(activateButton)
        self.addSubview(skipButton)
        
        self.notifBellImage.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(200)
            make.centerX.equalTo(self.safeAreaLayoutGuide)
        }
        
        self.notifLabel.snp.makeConstraints { (make) in
            make.top.equalTo(notifBellImage.snp.bottom).offset(80)
            make.centerX.equalTo(self.safeAreaLayoutGuide)
        }
        
        self.detailLabel.snp.makeConstraints { (make) in
            make.top.equalTo(notifLabel.snp.bottom).offset(30)
            make.centerX.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(60)
            make.width.equalTo(360)
        }
        
        self.activateButton.snp.makeConstraints { (make) in
            make.top.equalTo(detailLabel.snp.bottom).offset(30)
            make.centerX.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(55)
            make.width.equalTo(300)
        }
        
        self.skipButton.snp.makeConstraints { (make) in
            make.top.equalTo(activateButton.snp.bottom).offset(20)
            make.centerX.equalTo(self.safeAreaLayoutGuide)
        }
    }
}
