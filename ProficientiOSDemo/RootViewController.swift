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
        ["Name":"第二章 Demo","ViewController":Ch02IndexViewController()],
        ["Name":"第三章 Demo","ViewController":Ch03IndexViewController()],
        ["Name":"第四章 Demo","ViewController":Ch04IndexViewController()],
        ["Name":"第五章 Demo","ViewController":Ch05IndexViewController()]]

    override func viewDidLoad() {
        super.viewDidLoad()
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
        var cell = tableView.dequeueReusableCellWithIdentifier("ProficientCell")

        if cell == nil {
            cell = UITableViewCell(style: .Default, reuseIdentifier: "ProficientCell")
        }
        cell?.textLabel?.text = String(self.ListData[indexPath.row]["Name"]!)

        return cell!
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if let view = self.ListData[indexPath.row]["ViewController"] where view.isKindOfClass(UIViewController){
            (view as! UIViewController).title = String(self.ListData[indexPath.row]["Name"]!)
            self.navigationController?.pushViewController(view as! UIViewController, animated: true)
        }
    }

}
