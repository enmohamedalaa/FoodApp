//
//  AnimationsFactory.swift
//  FoodApp
//
//  Created by Mohamed on 3/25/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation
import UIKit

class AnimationsFactory {
    
    enum AnimationsType {
        case glow(from: Float, duration: CFTimeInterval)
    }
    
    static func animate (_ view: UIView, animationType: AnimationsType){
        let animation = self.animation(for: animationType)
        view.layer.add(animation, forKey: nil)
        
    }
    
    static func animation(for animationType: AnimationsType) -> CABasicAnimation{
        switch animationType {
        case .glow(let from, let duration):
            let popAnimation = CASpringAnimation(keyPath: "transform.scale")
            popAnimation.fromValue = from
            popAnimation.toValue = 1
            popAnimation.duration = duration
            return popAnimation
        }
    }
    
}
