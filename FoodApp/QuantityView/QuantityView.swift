//
//  QuantityView.swift
//  FoodApp
//
//  Created by Mohamed on 5/3/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation
import UIKit

class QuantityView: UIView {
    
    enum QuatityViewItem: Int {
        case plus
        case minus
    }
    
        var counter = 0 {
            didSet{
                lblQuantity.text = "\(counter)"
            }
        }
    
    @IBOutlet var containerView: UIView!
    @IBOutlet weak var lblQuantity: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
        lblQuantity.text = "\(counter)"
    }
    
    func commonInit(){
        guard let nibView = Bundle.main.loadNibNamed("QuantityView", owner: self, options: nil)?.first as? UIView else {return}
        nibView.frame = self.bounds
        self.addSubview(nibView)
        containerView = nibView
    }
    
//    func validated() -> Bool{
//        if counter >= 0 {
//            return true
//        }else{
//            return false
//        }
//    }
    
    @IBAction func btnPress(_ sender: UIButton) {
//        guard validated() == true else {return}
        if let selectButton = QuatityViewItem(rawValue: sender.tag) {
            switch selectButton {
            case .plus:
                counter += 1
            case .minus:
                if counter > 0{
                    counter -= 1
                }else{
                    counter = 0
                }
            }
        }
    }
    
}
