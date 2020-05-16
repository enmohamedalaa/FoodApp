//
//  APIRouter.swift
//  FoodApp
//
//  Created by Mohamed on 5/13/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation
import Alamofire

enum APIRouter: URLRequestConvertible {
    case Home
    
    var method: HTTPMethod {
        switch self {
        case .Home:
            return .get
        }
    }
    
    var path: String {
        switch self {
        case .Home:
            return "Home"
        }
    }
    
    var parameters: Parameters? {
        switch self {
        case .Home:
            return nil
        }
    }
    
    var encoding: ParameterEncoding {
        switch self {
        case .Home:
            return URLEncoding.default
        }
    }
    
    func asURLRequest() throws -> URLRequest {
        let url = try Constants.baseURL.asURL().appendingPathComponent(path)
        
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        if let parameter = parameters {
            return try encoding.encode(request, with: parameter)
        }
        
        return request
    }
}
