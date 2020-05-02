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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tvRestDetails.dataSource = self
        tvRestDetails.delegate = self
        tvRestDetails.registerHeaderNib(cellClass: RestDetailsHeaderCell.self)

        // Do any additional setup after loading the view.
    }
    

}

extension ResturantViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tvRestDetails.dequeueHeader() as RestDetailsHeaderCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 190
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}

