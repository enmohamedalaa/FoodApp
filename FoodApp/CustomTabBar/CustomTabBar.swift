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
    @IBOutlet weak var lineLeading: NSLayoutConstraint!
    @IBOutlet weak var lineView: UIView!
    
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
    
    @IBAction func btnHome(_ sender: UIButton) {
        UIView.animate(withDuration: 0.8) {
            self.lineLeading.constant = sender.frame.origin.x - (sender.frame.width / 2)
            AnimationsFactory.animate(sender, animationType: .glow(from: 0.2, duration: 10))
            self.layoutIfNeeded()
        }
        
    }
    
    @IBAction func btnProfile(_ sender: UIButton) {
        UIView.animate(withDuration: 0.8) {
            self.lineLeading.constant = sender.frame.origin.x - (sender.frame.width / 2)
            AnimationsFactory.animate(sender, animationType: .glow(from: 0.2, duration: 10))
            self.layoutIfNeeded()
        }
    }
}
