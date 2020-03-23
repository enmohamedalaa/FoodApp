//
//  ViewController.swift
//  FoodApp
//
//  Created by Mohamed on 3/18/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tvMain: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tvMain.dataSource = self
        tvMain.delegate = self
        registerCell()

    }
    
    func registerCell(){
        tvMain.registerHeaderNib(cellClass: CityHeaderCell.self)
        tvMain.registerCellNib(cellClass: RestTypeCell.self)
        tvMain.registerHeaderNib(cellClass: ResturantsHeaderCell.self)
        tvMain.registerCellNib(cellClass: ResturantCell.self)
    }
    
    
}

extension ViewController: UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if (section == 0 ){
            let header = tvMain.dequeueReusableHeaderFooterView(withIdentifier: "CityHeaderCell") as! CityHeaderCell
            return header
        } else {
            let header = tvMain.dequeueReusableHeaderFooterView(withIdentifier: "ResturantsHeaderCell") as! ResturantsHeaderCell
            return header
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
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
    
}

