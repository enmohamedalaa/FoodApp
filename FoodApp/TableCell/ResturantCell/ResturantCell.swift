//
//  ResturantCell.swift
//  FoodApp
//
//  Created by Mohamed on 3/22/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class ResturantCell: UITableViewCell {

    @IBOutlet weak var cvCuisine: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
        cvCuisine.dataSource = self
        cvCuisine.delegate = self
        cvCuisine.registerCellNib(cellClass: CuisineCell.self)
    }
}

extension ResturantCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cvCuisine.dequeue(indexPath: indexPath) as CuisineCell
        return cell
    }
    
}

extension ResturantCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 70, height: 20)
    }
}
