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
        imageView.contentMode = .scaleAspectFit
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
    
//    let tryView: UIView = {
//        let view = UIView()
//        view.backgroundColor = .lightGray
//        return view
//    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        print((self.frame.size.width / 4) - 3.5)
        print(self.frame.size.height)
        print(UIScreen.main.nativeBounds.height)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        self.backgroundColor = UIColor(red: 0.94, green: 0.89, blue: 0.87, alpha: 1.00)
        
//        self.addSubview(self.tryView)
        self.addSubview(notifBellImage)
        self.addSubview(notifLabel)
        self.addSubview(detailLabel)
        self.addSubview(activateButton)
        self.addSubview(skipButton)
        
//        self.tryView.snp.makeConstraints { (make) in
//            make.bottom.right.equalTo(self.safeAreaLayoutGuide).offset(20)
//            make.left.equalTo(self.safeAreaLayoutGuide)
//            make.height.equalTo(40)
//        }
        
        self.notifBellImage.snp.makeConstraints { (make) in
//            make.top.equalTo(self.safeAreaLayoutGuide).offset(70)
            make.bottom.equalTo(notifLabel.snp.top).offset(-80)
            make.centerX.equalTo(self.safeAreaLayoutGuide)
            let imageSize = (self.frame.size.width / 4) - 3.5
            make.size.equalTo(CGSize(width: imageSize, height: imageSize))
        }
        
        self.notifLabel.snp.makeConstraints { (make) in
            make.bottom.equalTo(detailLabel.snp.top).offset(-30)
            make.centerX.equalTo(self.safeAreaLayoutGuide)
        }
        
        self.detailLabel.snp.makeConstraints { (make) in
            make.bottom.equalTo(activateButton.snp.top).offset(-30)
            make.centerX.equalTo(self.safeAreaLayoutGuide)
            make.right.equalTo(self.safeAreaLayoutGuide).offset(-20)
            make.left.equalTo(self.safeAreaLayoutGuide).offset(20)
            make.height.equalTo(80)
//            make.width.equalTo(360)
        }
        
        self.activateButton.snp.makeConstraints { (make) in
            make.bottom.equalTo(skipButton.snp.top).offset(-30)
            make.centerX.equalTo(self.safeAreaLayoutGuide)
            make.right.equalTo(self.safeAreaLayoutGuide).offset(-40)
            make.left.equalTo(self.safeAreaLayoutGuide).offset(40)
            make.height.equalTo(55)
//            make.width.equalTo(300)
        }
        
        self.skipButton.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.safeAreaLayoutGuide)
            if UIScreen.main.nativeBounds.height == 1136.0 {
                make.bottom.equalTo(self.safeAreaLayoutGuide).offset(-50)
            }
            if UIScreen.main.nativeBounds.height == 1334.0 {
                make.bottom.equalTo(self.safeAreaLayoutGuide).offset(-90)
            }
            else {
                make.bottom.equalTo(self.safeAreaLayoutGuide).offset(-150)
            }
        }
    }
}
