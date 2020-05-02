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
    @IBOutlet weak var vTabBar: CustomTabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tvMain.dataSource = self
        tvMain.delegate = self
        vTabBar.delegate = self
        registerCell()
        
    }
    
    func registerCell(){
        tvMain.registerHeaderNib(cellClass: CityHeaderCell.self)
        tvMain.registerCellNib(cellClass: RestTypeCell.self)
        tvMain.registerHeaderNib(cellClass: ResturantsHeaderCell.self)
        tvMain.registerCellNib(cellClass: ResturantCell.self)
    }
    
    
}
