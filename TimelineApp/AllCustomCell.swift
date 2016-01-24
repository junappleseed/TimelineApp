//
//  AllCustomCell.swift
//  TimelineApp
//
//  Created by Jun on 2016/01/10.
//  Copyright © 2016年 junappleseed. All rights reserved.
//

import UIKit

class AllCustomCell: UITableViewCell {
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    func setCell(entry: Entry) {
        usernameLabel.text = entry.username
        titleLabel.text = entry.title
    }
}
