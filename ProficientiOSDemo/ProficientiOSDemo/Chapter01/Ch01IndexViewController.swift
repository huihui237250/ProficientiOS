//
//  Ch01IndexViewController.swift
//  ProficientiOSDemo
//
//  Created by glimmerlu on 16/7/12.
//  Copyright © 2016年 huihui. All rights reserved.
//

import UIKit

class Ch01IndexViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        if let _ = self.navigationController {
            self.title = "第一章"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
