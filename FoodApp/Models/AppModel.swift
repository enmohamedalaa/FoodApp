//
//  AppModel.swift
//  FoodApp
//
//  Created by Mohamed on 5/15/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation


struct AppModel<T: Decodable>: Decodable {
    let status: statusEnum
    let data: T?
    let message: String?
    
    enum statusEnum: String, Decodable {
        case success = "success"
    }
}
