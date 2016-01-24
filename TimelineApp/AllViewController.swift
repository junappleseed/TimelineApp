//
//  AllViewController.swift
//  TimelineApp
//
//  Created by Jun on 2016/01/10.
//  Copyright © 2016年 junappleseed. All rights reserved.
//

import UIKit

class AllViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

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
        let cell = tableView.dequeueReusableCellWithIdentifier("AllCustomCell") as! AllCustomCell
        cell.setCell(entrys[indexPath.row])
        return cell
    }
    
    func setupEntrys() {
        let e1 = Entry(username: "Javaちゃん", title: "このアプリについて")
        let e2 = Entry(username: "Swiftちゃん", title: "Markdown記法チートシート")
        entrys.append(e1)
        entrys.append(e2)
    }
}

