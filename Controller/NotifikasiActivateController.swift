//
//  NotifikasiActivateController.swift
//  NotifikasiDanRiwayatScreen
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 01/11/20.
//

import UIKit

class NotifikasiActivateController: UIViewController {
    
    private var notifikasiActivateView: NotifikasiActivateView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.notifikasiActivateView = NotifikasiActivateView.init(frame: self.view.frame)
        self.view = self.notifikasiActivateView
        
        self.navigationController?.navigationBar.isHidden = true
    }
    
}
