//
//  FeedViewController.swift
//  TimelineApp
//
//  Created by Jun on 2016/02/06.
//  Copyright © 2016年 junappleseed. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var entrys = [Entry]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupEntrys()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entrys.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("FeedCustomCell") as! FeedCustomCell
        cell.setCell(entrys[indexPath.row])
        return cell
    }
    
    func setupEntrys() {
        let e1 = Entry(username: "Javaちゃん", title: "このアプリについて", updateTime: "2016/02/06", tags: "Java")
        let e2 = Entry(username: "Swiftちゃん", title: "Markdown記法チートシート", updateTime: "2016/02/05", tags: "Swift, iOS")
        let e3 = Entry(username: "Swiftちゃん", title: "Markdown記法チートシート", updateTime: "2016/02/05", tags: "Swift, iOS")
        let e4 = Entry(username: "Swiftちゃん", title: "Markdown記法チートシート", updateTime: "2016/02/05", tags: "Swift, iOS")
        let e5 = Entry(username: "Swiftちゃん", title: "Markdown記法チートシート", updateTime: "2016/02/05", tags: "Swift, iOS")
        let e6 = Entry(username: "Swiftちゃん", title: "Markdown記法チートシート", updateTime: "2016/02/05", tags: "Swift, iOS")
        let e7 = Entry(username: "Swiftちゃん", title: "Markdown記法チートシート", updateTime: "2016/02/05", tags: "Swift, iOS")
        let e8 = Entry(username: "Swiftちゃん", title: "Markdown記法チートシート", updateTime: "2016/02/05", tags: "Swift, iOS")
        let e9 = Entry(username: "Swiftちゃん", title: "Markdown記法チートシート", updateTime: "2016/02/05", tags: "Swift, iOS")
        let e10 = Entry(username: "Swiftちゃん", title: "Markdown記法チートシートMarkdown記法チートシートMarkdown記法チートシートMarkdown記法チートシートMarkdown記法チートシート", updateTime: "2016/02/05", tags: "Swift, iOS")
        
        entrys.append(e1)
        entrys.append(e2)
        entrys.append(e3)
        entrys.append(e4)
        entrys.append(e5)
        entrys.append(e6)
        entrys.append(e7)
        entrys.append(e8)
        entrys.append(e9)
        entrys.append(e10)
    }
}
