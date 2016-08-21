//
//  CommonViewController.swift
//  ProficientiOSDemo
//
//  Created by glimmerlu on 16/8/8.
//  Copyright © 2016年 huihui. All rights reserved.
//

import UIKit

class CommonViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if isIos7OrLater() {
            self.edgesForExtendedLayout = .None
            self.extendedLayoutIncludesOpaqueBars = false
            self.modalPresentationCapturesStatusBarAppearance = false
        }
    }
}
