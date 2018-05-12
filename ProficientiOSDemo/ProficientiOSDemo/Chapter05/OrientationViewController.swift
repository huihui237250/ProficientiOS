//
//  OrientationViewController.swift
//  ProficientiOSDemo
//
//  Created by glimmerlu on 16/8/22.
//  Copyright © 2016年 huihui. All rights reserved.
//

import UIKit

class OrientationViewController: CommonViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Orientations"
        
    }
    
    
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
//        return .AllButUpsideDown
        return .portrait;
    }
}
