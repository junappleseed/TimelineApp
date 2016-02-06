//
//  Entry.swift
//  TimelineApp
//
//  Created by Jun on 2016/01/10.
//  Copyright © 2016年 junappleseed. All rights reserved.
//

import Foundation

class Entry: NSObject {
    var username: String
    var title: String
    var updateTime: String
    var tags: String
    
    init(username: String, title: String, updateTime: String, tags: String) {
        self.username = username
        self.title = title
        self.updateTime = updateTime
        self.tags = tags
    }
}
