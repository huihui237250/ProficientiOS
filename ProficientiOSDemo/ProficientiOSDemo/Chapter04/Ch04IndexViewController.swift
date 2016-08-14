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
        let array:Array<Dictionary<String,AnyObject>> = [["Name":"Button Fun","ViewController":ButtonFunViewController()]];
        super.listData = array
        
        super.viewDidLoad()
    }

}
