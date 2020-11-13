//
//  ReportController.swift
//  NotifikasiDanRiwayatScreen
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 13/11/20.
//

import UIKit

class ReportController: UIViewController {
    
    private var reportView: ReportView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.reportView = ReportView.init(frame: self.view.frame)
        self.view = self.reportView
        
        self.navigationController?.navigationBar.isHidden = true
        
        self.reportView.cencelButton.addTarget(self, action: #selector(cencelButtonPressed), for: .touchUpInside)
    }
    
    @objc
    private func cencelButtonPressed(){
//        let navigationController = UINavigationController(rootViewController: DetailStoryController())
//        navigationController.modalPresentationStyle = .currentContext
//        self.present(navigationController, animated: true, completion: nil)
    }

}

