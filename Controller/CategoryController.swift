//
//  CategoryController.swift
//  NotifikasiDanRiwayatScreen
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 13/11/20.
//

import UIKit

class CategoryController: UIViewController {
    
    private var categoryView: CategoryView!
    
    let imageList = ["Optimis & PD","Bahagia","Damai","Termotivasi","Cemas & Takut","Sedih","Kecewa","Self Harm","Ada Konflik Nih","Bersalah","Hampa","Kesepian"]

    var shouldGoToReadStoryScreen = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.categoryView = CategoryView.init(frame: self.view.frame)
        self.view = self.categoryView
        
//        if shouldGoToReadStoryScreen {
//            let controller = ReadStoryController()
//            self.navigationController?.pushViewController(controller, animated: false)
//        }
        
        categoryView.collectionView.delegate = self
        categoryView.collectionView.dataSource = self
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
//        self.categoryView.backButton.addTarget(self, action: #selector(backButtonPressed), for: .touchUpInside)
    }
    
//    @objc
//    private func backButtonPressed(){
//        self.navigationController?.popViewController(animated: true)
//    }
    
}

extension CategoryController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! CategoryViewCell
        let category = imageList[indexPath.row]
        cell.collectionImage.image = UIImage(named: category)
        cell.collectionLabel.text = category
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenWidth = (categoryView.collectionView.bounds.width * 0.5)
        let screenHeight = (screenWidth * 0.5) + 3
        
        return CGSize(width: screenWidth, height: screenHeight)
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        self.navigationController?.pushViewController(controller, animated: true)
//    }
}
