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

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let listData = listData {
            return listData.count
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "ProficientCell")
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "ProficientCell")
        }
        cell?.textLabel?.text = String(describing: self.listData![indexPath.row]["Name"]!)
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//            self.navigationController?.pushViewController(view as! UIViewController, animated: true)
    }

}
