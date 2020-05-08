//
//  ResturantViewController.swift
//  FoodApp
//
//  Created by Mohamed on 5/1/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class ResturantViewController: UIViewController {
    
    @IBOutlet weak var tvRestDetails: UITableView!
    
    @IBOutlet weak var lblTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tvRestDetails.dataSource = self
        tvRestDetails.delegate = self
        tvRestDetails.registerHeaderNib(cellClass: RestDetailsHeaderCell.self)
        tvRestDetails.registerCellNib(cellClass: FoodCell.self)
        
        // Do any additional setup after loading the view.
    }
    
    
}

extension ResturantViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tvRestDetails.dequeueHeader() as RestDetailsHeaderCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0{
            return 220
        }else{
            return 40
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 0
        }else{
            return 15
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tvRestDetails.dequeue() as FoodCell
        return cell
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //        if let header = tvMain.headerView(forSection: 0) {
        //            let headeroffset = tvMain.rectForRow(at: IndexPath(row: 0, section: 0))
        //            let mysecondoffset = headeroffset.origin.y
        //            let offset = 1 - (scrollView.contentOffset.y / mysecondoffset)
        //            header.alpha = offset
        //        }
        
        if let header = tvRestDetails.headerView(forSection: 0) {
            let headeroffset = tvRestDetails.rectForHeader(inSection: 0)
            let mysecondoffset = headeroffset.height
            let offset = ((scrollView.contentOffset.y / mysecondoffset) * 2) - 1 
            print(offset)
            lblTitle.alpha = offset
        }
    }
}

