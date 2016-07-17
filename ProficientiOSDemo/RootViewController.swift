//
//  RootViewController.swift
//  ProficientiOSDemo
//
//  Created by glimmerlu on 16/7/12.
//  Copyright © 2016年 huihui. All rights reserved.
//

import UIKit


class RootViewController: UITableViewController {
    
    var ListData:Array<Dictionary<String,AnyObject>> = [
        ["Name":"第一章 Demo","ViewController":Ch01IndexViewController()],
        ["Name":"第二章 Demo","ViewController":Ch02IndexViewController()],
        ["Name":"第三章 Demo","ViewController":Ch01IndexViewController()],
        ["Name":"第四章 Demo","ViewController":Ch01IndexViewController()],
        ["Name":"第五章 Demo","ViewController":Ch01IndexViewController()],
        ["Name":"第六章 Demo","ViewController":Ch01IndexViewController()],
        ["Name":"第七章 Demo","ViewController":Ch01IndexViewController()],
        ["Name":"第八章 Demo","ViewController":Ch01IndexViewController()],
        ["Name":"第九章 Demo","ViewController":Ch01IndexViewController()],
        ["Name":"第十章 Demo","ViewController":Ch01IndexViewController()],
        ["Name":"第十一章 Demo","ViewController":Ch01IndexViewController()],
        ["Name":"第十二章 Demo","ViewController":Ch01IndexViewController()],
        ["Name":"第十三章 Demo","ViewController":Ch01IndexViewController()],
        ["Name":"第十四章 Demo","ViewController":Ch01IndexViewController()],
        ["Name":"第十五章 Demo","ViewController":Ch01IndexViewController()],
        ["Name":"第十六章 Demo","ViewController":Ch01IndexViewController()],
        ["Name":"第十七章 Demo","ViewController":Ch01IndexViewController()]]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        self.title = "精通iOS开发"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.ListData.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
        var cell = tableView.dequeueReusableCellWithIdentifier("ProficientCell")

        if cell == nil {
            cell = UITableViewCell(style: .Default, reuseIdentifier: "ProficientCell")
        }
        cell?.textLabel?.text = String(self.ListData[indexPath.row]["Name"]!)

        return cell!
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if let view = self.ListData[indexPath.row]["ViewController"] where view.isKindOfClass(UIViewController){
            self.navigationController?.pushViewController(view as! UIViewController, animated: true)
        }
    }

}
