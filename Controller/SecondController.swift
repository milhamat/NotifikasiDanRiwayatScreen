//
//  SecondController.swift
//  NotifikasiDanRiwayatScreen
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 31/10/20.
//

import UIKit

class SecondController: UIViewController {
    
    private var secondView: SecondView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.secondView = SecondView.init(frame: self.view.frame)
        self.view = self.secondView
        
        
    }
    
}
