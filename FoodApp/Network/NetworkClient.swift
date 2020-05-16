//
//  NetworkClient.swift
//  FoodApp
//
//  Created by Mohamed on 5/13/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//
import UIKit
import Foundation
import Alamofire
import Toast_Swift

class NetworkClient {

    typealias onSuccess<T> = ((T) -> ())
    typealias onFailure = ((_ error: Error) -> ())
    
    static func PerformRequest<T: Decodable>(_ object: T.Type, router: APIRouter, toastView: UIView, success: @escaping onSuccess<T>, failure: @escaping onFailure) {
        toastView.makeToastActivity(.center)
        Alamofire.request(router).responseJSON { (response) in
            do{
                let json = try JSONDecoder().decode(AppModel<T>.self, from: response.data!)
                if json.status == .success {
                    guard let data = json.data else {return}
                    toastView.hideToastActivity()
                    success(data)
                }
                
//                let list = try JSONDecoder().decode(T.self, from: response.data!)
//                success(list)
            }catch let erorr {
                toastView.hideToastActivity()
                failure(erorr)
            }
        }
    }
}

