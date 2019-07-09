//
//  FruitTableViewCell.swift
//  iOS_Training_Demo
//
//  Created by Tran Luu Nghia on 7/9/19.
//  Copyright © 2019 HaoLe. All rights reserved.
//

import UIKit

class FruitTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(data: Fruit) {
        nameLabel.text = data.name
    }
}
