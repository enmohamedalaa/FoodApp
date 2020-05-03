//
//  RestDetailsHeaderCell.swift
//  FoodApp
//
//  Created by Mohamed on 5/1/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class RestDetailsHeaderCell: UITableViewHeaderFooterView {

    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var cv: UICollectionView!
    
    let items: [String] = ["Burger","American","A"]
    override func awakeFromNib() {
        super.awakeFromNib()
        cv.dataSource = self
        cv.delegate = self
        cv.registerCellNib(cellClass: CuisineCell.self)
    }
}
extension RestDetailsHeaderCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = items[indexPath.row]
        let cell = cv.dequeue(indexPath: indexPath) as CuisineCell
        cell.lblTitle.text = item
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let item = items[indexPath.row]
        let size = item.size(withAttributes: [NSAttributedString.Key.font: lblTitle?.font])
        return CGSize(width: size.width + 12, height: 30)
    }
    
}
