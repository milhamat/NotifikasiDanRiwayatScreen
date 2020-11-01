//
//  ViewController.swift
//  NotifikasiDanRiwayatScreen
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 23/10/20.
//

import UIKit

class FirstController: UIViewController {
    
    private var firstView: FirstView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.firstView = FirstView.init(frame: self.view.frame)
        self.view = self.firstView
        
        self.navigationController?.navigationBar.isHidden = true
        
        self.firstView.biasaAjaButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    @objc private func buttonPressed(){
        print("Biasa Aja")
    }
}

