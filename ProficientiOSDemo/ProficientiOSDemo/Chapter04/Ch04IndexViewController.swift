//
//  Ch04IndexViewController.swift
//  ProficientiOSDemo
//
//  Created by glimmerlu on 16/8/14.
//  Copyright © 2016年 huihui. All rights reserved.
//

import UIKit

class Ch04IndexViewController: CommonTableViewController {

    override func viewDidLoad() {
        let array:Array<Dictionary<String,AnyObject>> = [["Name":"Control Fun" as AnyObject,"ViewController":ControlFunViewController()]];
        super.listData = array
        
        super.viewDidLoad()
    }

}
