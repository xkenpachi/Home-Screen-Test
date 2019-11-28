//
//  CustomLayout.swift
//  Home Screen Test
//
//  Created by Emre Öner on 28.11.2019.
//  Copyright © 2019 Emre Öner. All rights reserved.
//

import UIKit

class CustomLayout: UICollectionViewFlowLayout {

    let minColumnWidth: CGFloat = 300.0
    let cellHeight: CGFloat = 60
    
    override func prepare() {
        guard let collectionView = collectionView else {return}
        
        let availableWidth = collectionView.bounds.inset(by: collectionView.layoutMargins).width
        let maxNumColumns = Int(availableWidth / minColumnWidth)
        let cellWidth = (availableWidth / CGFloat(maxNumColumns)).rounded(.down)
        
        self.itemSize = CGSize(width: cellWidth / 2, height: cellHeight)
        self.sectionInset = UIEdgeInsets(top: self.minimumInteritemSpacing, left: 0.0, bottom: 0.0, right: 0.0)
        self.sectionInsetReference = .fromSafeArea
    }
    
}
