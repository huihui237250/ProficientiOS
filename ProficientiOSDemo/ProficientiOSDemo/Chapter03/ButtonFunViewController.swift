//
//  ButtonFunViewController.swift
//  ProficientiOSDemo
//
//  Created by glimmerlu on 16/8/8.
//  Copyright © 2016年 huihui. All rights reserved.
//

import UIKit

class ButtonFunViewController: CommonViewController {

    @IBOutlet weak var statusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Button Fun"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
        let titile = sender.titleForState(.Normal)!
        let plainText = "\(titile) button pressed"
        
        let styledText = NSMutableAttributedString(string: plainText)
        let attributes = [NSFontAttributeName:UIFont.boldSystemFontOfSize(statusLabel.font.pointSize)]
        let nameRange = (plainText as NSString).rangeOfString(title!)
        styledText.setAttributes(attributes, range: nameRange)
        statusLabel.attributedText = styledText
    }
}
