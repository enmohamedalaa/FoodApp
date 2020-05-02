//
//  RestCollectionCell.swift
//  FoodApp
//
//  Created by Mohamed on 3/19/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class RestCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var restImg: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        normalCell()
    }
    
    func normalCell() {
        self.layer.shadowOpacity = 0
        lblTitle.alpha = 0.6
        lblTitle.font = UIFont.systemFont(ofSize: 17, weight: .regular)
    }
    
    override var isSelected: Bool{
        didSet{
            if isSelected {
                self.layer.shadowOpacity = 1
                lblTitle.alpha = 1
                lblTitle.font = UIFont.systemFont(ofSize: 18, weight: .bold)
            }else{
                normalCell()
            }
        }
    }
    
}
