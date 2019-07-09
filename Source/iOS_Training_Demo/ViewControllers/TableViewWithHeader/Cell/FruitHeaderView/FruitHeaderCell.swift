//
//  FruitHeaderCell.swift
//  iOS_Training_Demo
//
//  Created by Tran Luu Nghia on 7/9/19.
//  Copyright © 2019 HaoLe. All rights reserved.
//

import UIKit

class FruitHeaderCell: UITableViewHeaderFooterView {

    @IBOutlet weak var nameLabel: UILabel!
    
    func setData(groupFruit: GroupFruit) {
        nameLabel.text = groupFruit.name
    }

}
