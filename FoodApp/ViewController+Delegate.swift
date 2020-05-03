//
//  ViewController+Delegate.swift
//  FoodApp
//
//  Created by Mohamed on 3/26/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation
import UIKit

extension ViewController: UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 100
        }else{
            return 60
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if (section == 0 ){
            let header = tvMain.dequeueReusableHeaderFooterView(withIdentifier: "CityHeaderCell") as! CityHeaderCell
            return header
        } else {
            let header = tvMain.dequeueReusableHeaderFooterView(withIdentifier: "ResturantsHeaderCell") as! ResturantsHeaderCell
            return header
        }
    }
    
    func tableView(_ tableView: UITableView, minimumLineSpacing  section: Int) -> CGFloat {
        if (section == 0 ){
            return 60
        } else {
            return 100
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tvMain.dequeue() as RestTypeCell
            return cell
        } else {
            let cell = tvMain.dequeue() as ResturantCell
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return 5
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if let header = tvMain.headerView(forSection: 0) {
            let headeroffset = tvMain.rectForRow(at: IndexPath(row: 0, section: 0))
            let mysecondoffset = headeroffset.origin.y
            let offset = 1 - (scrollView.contentOffset.y / mysecondoffset)
            header.alpha = offset
        }
        
        if let header = tvMain.headerView(forSection: 1) as? ResturantsHeaderCell {
            let headeroffset = tvMain.rectForHeader(inSection: 1)
            let mysecondoffset = headeroffset.origin.y
            let offset = 1 - (scrollView.contentOffset.y / mysecondoffset)
            if offset <= 0 {
                header.containerView.layer.mask = nil
                tvMain.backgroundColor = .white
            }else{
                header.containerView.layer.mask = header.containerMask
                tvMain.backgroundColor = .clear
            }
        }
    }
}

extension ViewController: CustomTabBarDelegate {
    func didPressOnButton(type: CustomTabBar.CustomTabBarButtons) {
        switch type {
        case .home:
            print("Press Home")
        case .profile:
            print("Press Profile")
        }
    }
}
