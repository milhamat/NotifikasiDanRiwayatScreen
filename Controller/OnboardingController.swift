//
//  OnboardingController.swift
//  NotifikasiDanRiwayatScreen
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 27/11/20.
//

import UIKit

class OnboardingController: UIViewController {

    private var onboardingView: OnboardingView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.onboardingView = OnboardingView.init(frame: self.view.frame)
        self.view = self.onboardingView
        
        self.navigationController?.navigationBar.isHidden = true
        
        self.onboardingView.containerStackView.alpha = 0.0
        self.onboardingView.detailLabel.alpha = 0.0
        self.onboardingView.nextButton.alpha = 0.0
        self.onboardingView.lastLabel.alpha = 0.0
        
        Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false) { (timer) in
            UIView.animate(withDuration: 0.8, delay: 0.8, options: .curveEaseOut, animations: {
                
                let yPos = self.onboardingView.greattingLabel.frame.origin.y - 60
                let xPos = self.onboardingView.greattingLabel.frame.origin.x
                let width = self.onboardingView.greattingLabel.frame.width
                let height = self.onboardingView.greattingLabel.frame.height
                self.onboardingView.containerStackView.frame = CGRect(x: xPos, y: yPos, width: width, height: height)
                self.onboardingView.containerStackView.alpha = 1.0
            }, completion: nil)
            
        }
        
        Timer.scheduledTimer(withTimeInterval: 4.0, repeats: false) { (timer) in
            UIView.animate(withDuration: 0.8, delay: 0.8, options: .curveEaseOut, animations: {
                 
                let yPos = self.onboardingView.detailLabel.frame.origin.y - 60
                let xPos = self.onboardingView.detailLabel.frame.origin.x
                let width = self.onboardingView.detailLabel.frame.width
                let height = self.onboardingView.detailLabel.frame.height
                self.onboardingView.detailLabel.frame = CGRect(x: xPos, y: yPos, width: width, height: height)
                self.onboardingView.detailLabel.alpha = 1.0
            }, completion: nil)
        }
        
        Timer.scheduledTimer(withTimeInterval: 6.0, repeats: false) { (timer) in
            UIView.animate(withDuration: 0.8, delay: 0.8, options: .curveEaseOut, animations: {
               self.onboardingView.nextButton.alpha = 1.0
               self.onboardingView.lastLabel.alpha = 1.0
            }, completion: nil)
        }
        
        self.onboardingView.nextButton.addTarget(self, action: #selector(nextButtonPressed), for: .touchUpInside)
        self.onboardingView.skipButton.addTarget(self, action: #selector(skipButtonPressed), for: .touchUpInside)

    }
    
    @objc
    private func nextButtonPressed(){
        // put here
    }
    
    @objc
    private func skipButtonPressed(){
        // put here
    }
}

