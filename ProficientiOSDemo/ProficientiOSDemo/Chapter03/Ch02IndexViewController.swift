//
//  Ch02IndexViewController.swift
//  ProficientiOSDemo
//
//  Created by glimmerlu on 16/7/17.
//  Copyright © 2016年 huihui. All rights reserved.
//

import UIKit

class Ch02IndexViewController: CommonTableViewController {
    
    var NewListData:Array<Dictionary<String,AnyObject>> = [
        ["Name":"Button Fun","ViewController":ButtonFunViewController()]
    ]

    override func viewDidLoad() {
        super.ListData = NewListData;
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        if let _ = self.navigationController {
            self.title = "第二章"
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
