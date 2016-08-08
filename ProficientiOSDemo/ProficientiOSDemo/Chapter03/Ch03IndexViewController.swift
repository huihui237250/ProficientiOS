//
//  Ch03IndexViewController.swift
//  ProficientiOSDemo
//
//  Created by glimmerlu on 16/8/8.
//  Copyright © 2016年 huihui. All rights reserved.
//

import UIKit

class Ch03IndexViewController: CommonTableViewController {

    override func viewDidLoad() {
        
        let array:Array<Dictionary<String,AnyObject>> = [["Name":"Button Fun","ViewController":ButtonFunViewController()],
            ["Name":"第三章 Demo","ViewController":Ch02IndexViewController()]];
        super.listData = array
        
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
