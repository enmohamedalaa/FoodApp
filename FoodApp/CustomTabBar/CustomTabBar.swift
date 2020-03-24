//
//  CustomTabBar.swift
//  FoodApp
//
//  Created by Mohamed on 3/24/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class CustomTabBar: UIView {
    
    @IBOutlet var containerView: UIView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit(){
        if let nibView = Bundle.main.loadNibNamed("CustomTabBar", owner: self, options: nil)?.first as? UIView{
            nibView.frame = self.bounds
            self.addSubview(nibView)
            containerView = nibView
        }
    }
    
}
