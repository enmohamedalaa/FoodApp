//
//  Home.swift
//  FoodApp
//
//  Created by Mohamed on 5/13/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation
//
//// MARK: - Home
//struct Home: Codable {
//    let status, message: String?
//    let data: DataClass?
//}

// MARK: - DataClass
struct Home: Codable {
    let title: String?
    let types: [CircleModel]?
}

// MARK: - CircleModel
struct CircleModel: Codable {
    let id: Int?
    let image: String?
    let title: String?
}
