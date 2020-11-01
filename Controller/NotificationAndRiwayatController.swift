//
//  SecondController.swift
//  NotifikasiDanRiwayatScreen
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 31/10/20.
//

import UIKit

class NotificationAndRiwayatController: UIViewController {
    
    private var secondView: NotificationAndRiwayatView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.secondView = NotificationAndRiwayatView.init(frame: self.view.frame)
        self.view = self.secondView
        
        
    }
    
}
