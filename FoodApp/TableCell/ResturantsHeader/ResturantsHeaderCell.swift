//
//  ResturantsHeaderCell.swift
//  FoodApp
//
//  Created by Mohamed on 3/21/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class ResturantsHeaderCell: UITableViewHeaderFooterView {

    @IBOutlet weak var containerView: UIView!
    lazy var containerMask: CAShapeLayer = {
        let path = UIBezierPath(roundedRect: containerView.bounds, byRoundingCorners: [.topRight, .topLeft], cornerRadii: CGSize(width: 35, height: 35))
        
        let maskLayer = CAShapeLayer()
        maskLayer.path = path.cgPath
        
        return maskLayer
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        containerView.layer.mask = containerMask
    }

}
