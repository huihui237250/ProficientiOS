//
//  Ch05IndexViewController.swift
//  ProficientiOSDemo
//
//  Created by glimmerlu on 16/8/22.
//  Copyright © 2016年 huihui. All rights reserved.
//

import UIKit

class Ch05IndexViewController: CommonTableViewController {

    override func viewDidLoad() {
        let array:Array<Dictionary<String,AnyObject>> = [["Name":"Orientations" as AnyObject,"ViewController":OrientationViewController()],
                                                         ["Name":"Layout" as AnyObject,"ViewController":LayoutViewController()]];
        super.listData = array
        
        super.viewDidLoad()
    }
    
}
