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
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let titile = sender.title(for: UIControlState())!
        let plainText = "\(titile) button pressed"
        
        let styledText = NSMutableAttributedString(string: plainText)
        let attributes = [NSFontAttributeName:UIFont.boldSystemFont(ofSize: statusLabel.font.pointSize)]
        let nameRange = (plainText as NSString).range(of: title!)
        styledText.setAttributes(attributes, range: nameRange)
        statusLabel.attributedText = styledText
    }
}
