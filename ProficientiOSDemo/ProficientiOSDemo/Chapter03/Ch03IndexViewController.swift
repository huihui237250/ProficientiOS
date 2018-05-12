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
        
        let array:Array<Dictionary<String,AnyObject>> = [["Name":"Button Fun" as AnyObject,"ViewController":ButtonFunViewController()]];
        super.listData = array
        
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
