//
//  FeedCustomCell.swift
//  TimelineApp
//
//  Created by Jun on 2016/02/06.
//  Copyright © 2016年 junappleseed. All rights reserved.
//

import UIKit

class FeedCustomCell: UITableViewCell {
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var updateTimeLabel: UILabel!
    @IBOutlet weak var tagsLabel: UILabel!
    
    
    func setCell(entry: Entry) {
        usernameLabel.text = entry.username
        titleLabel.text = entry.title
        updateTimeLabel.text = entry.updateTime
        tagsLabel.text = entry.tags
    }
}
