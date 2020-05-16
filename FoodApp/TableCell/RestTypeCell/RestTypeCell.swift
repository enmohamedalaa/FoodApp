//
//  RestTypeCell.swift
//  FoodApp
//
//  Created by Mohamed on 3/19/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class RestTypeCell: UITableViewCell {
    
    var items: [CircleModel]? 
    
    @IBOutlet weak var cvRestaurant: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cvRestaurant.delegate = self
        cvRestaurant.dataSource = self
        cvRestaurant.registerCellNib(cellClass: RestCollectionCell.self)
    }
    
}

extension RestTypeCell : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        print(self.items?[indexPath.row])
        let item = self.items?[indexPath.row]
        let cell = cvRestaurant.dequeue(indexPath: indexPath) as RestCollectionCell
        cell.cofigure(item)
        
        return cell
    }
}

extension RestTypeCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width: CGFloat = (collectionView.frame.size.width - (8 * 4)) / 4.5
        return CGSize(width: width, height: width + 20)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
    }
}
