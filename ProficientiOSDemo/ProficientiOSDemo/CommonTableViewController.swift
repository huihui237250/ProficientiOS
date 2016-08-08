//
//  CommonTableViewController.swift
//  ProficientiOSDemo
//
//  Created by glimmerlu on 16/8/8.
//  Copyright © 2016年 huihui. All rights reserved.
//

import UIKit

class CommonTableViewController: UITableViewController {
    
    var listData:Array<Dictionary<String,AnyObject>>?
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let listData = listData {
            return listData.count
        }
        return 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("ProficientCell")
        
        if cell == nil {
            cell = UITableViewCell(style: .Default, reuseIdentifier: "ProficientCell")
        }
        cell?.textLabel?.text = String(self.listData![indexPath.row]["Name"]!)
        
        return cell!
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if let view = self.listData![indexPath.row]["ViewController"] where view.isKindOfClass(UIViewController){
            self.navigationController?.pushViewController(view as! UIViewController, animated: true)
        }
    }

}
