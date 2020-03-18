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
    var osama = 100
    var osama2 = 100
    var osama3 = 100
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tvMain.dataSource = self
        tvMain.delegate = self
        
        tvMain.register(UINib(nibName: "CityHeaderCell", bundle: nil), forCellReuseIdentifier: "CityHeaderCell")
    }


}

extension ViewController: UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tvMain.dequeueReusableHeaderFooterView(withIdentifier: "CityHeaderCell")
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
}

