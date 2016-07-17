//
//  CommonTableViewController.swift
//  ProficientiOSDemo
//
//  Created by glimmerlu on 16/7/17.
//  Copyright © 2016年 huihui. All rights reserved.
//

import UIKit

class CommonTableViewController: UITableViewController {
    
    var ListData:Array<Dictionary<String,AnyObject>>?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        self.edgesForExtendedLayout = .None
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.ListData == nil ? 0 : self.ListData!.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("ProficientCell")
        
        if cell == nil {
            cell = UITableViewCell(style: .Default, reuseIdentifier: "ProficientCell")
        }
        cell?.textLabel?.text = String(self.ListData![indexPath.row]["Name"]!)
        
        return cell!
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if let view = self.ListData![indexPath.row]["ViewController"] where view.isKindOfClass(UIViewController){
            self.navigationController?.pushViewController(view as! UIViewController, animated: true)
        }
    }

}
