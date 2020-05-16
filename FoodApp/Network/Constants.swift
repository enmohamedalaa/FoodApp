//
//  Constants.swift
//  FoodApp
//
//  Created by Mohamed on 5/12/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation

struct Constants {
    static let baseURL = "http://i0sa.com/food/"
}


enum HTTPHeaderField: String {
    case authentication = "Authorization"
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"
}

enum ContentType: String {
    case json = "application/x-www-form-urlencoded; charset=utf-8"
    case accept = "*/*"
    case acceptEncoding = "gzip;q=1.0, compress;q=0.5"
}
