//
//  NotifikasiActivateController.swift
//  NotifikasiDanRiwayatScreen
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 01/11/20.
//

import UIKit

class ActivateNotificationController: UIViewController {
    
    private var activateNotifikasiView: ActivateNotificationView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.activateNotifikasiView = ActivateNotificationView.init(frame: self.view.frame)
        self.view = self.activateNotifikasiView
        
        self.navigationController?.navigationBar.isHidden = true
    }
    
}
