//
//  ResturantCell.swift
//  FoodApp
//
//  Created by Mohamed on 3/22/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class ResturantCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
