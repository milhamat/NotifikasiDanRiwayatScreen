//
//  ViewController.swift
//  NotifikasiDanRiwayatScreen
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 23/10/20.
//

import UIKit

class MainController: UIViewController {
    
    private var firstView: MainView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.firstView = MainView.init(frame: self.view.frame)
        self.view = self.firstView
        
        self.navigationController?.navigationBar.isHidden = true
        
        self.firstView.biasaAjaButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        //        print("screenType:", UIScreen.main.nativeBounds.height)
    }
    
    @objc private func buttonPressed(){
        print("Biasa Aja")
    }
}

