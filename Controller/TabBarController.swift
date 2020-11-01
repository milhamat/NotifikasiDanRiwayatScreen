//
//  TabBarController.swift
//  NotifikasiDanRiwayatScreen
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 31/10/20.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        self.viewControllers = [initialTabBar, finalTabBar]
        
//        tabBar.alpha = 0.5
        
    }
    
    lazy public var initialTabBar: FirstController = {
        
        let initialTabBar = FirstController()
        
        let defaultImage = UIImage(named: "beranda")!
        
        let selectedImage = UIImage(named: "beranda")!
        
        let tabBarItems = (title: "", image: defaultImage, selectedImage: selectedImage)

        let tabBarItem = UITabBarItem(title: tabBarItems.title, image: tabBarItems.image, selectedImage: tabBarItems.selectedImage)
        
        initialTabBar.tabBarItem = tabBarItem

        return initialTabBar
    }()
    
    lazy public var finalTabBar: SecondController = {
        
        let finalTabBar = SecondController()
        
        let defaultImage = UIImage(named: "notifikasi")
        
        let selectedImage = UIImage(named: "notifikasi")
        
        let tabBarItem = UITabBarItem(title: "", image: defaultImage, selectedImage: selectedImage)
        
        finalTabBar.tabBarItem = tabBarItem
        
        return finalTabBar
    }()

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

extension TabBarController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected \(viewController.title!)")
    }
    
}
