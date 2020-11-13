//
//  WarningController.swift
//  NotifikasiDanRiwayatScreen
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 13/11/20.
//

import UIKit

class WarningController: UIViewController {
    
    private var warningView: WarningView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.warningView = WarningView.init(frame: self.view.frame)
        self.view = self.warningView

        self.navigationController?.navigationBar.isHidden = true
    }
    

    

}
