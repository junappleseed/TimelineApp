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
    
    init(username: String, title: String) {
        self.username = username
        self.title = title
    }
}
