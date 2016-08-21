//
//  ControlFunViewController.swift
//  ProficientiOSDemo
//
//  Created by glimmerlu on 16/8/14.
//  Copyright © 2016年 huihui. All rights reserved.
//

import UIKit

class ControlFunViewController: CommonViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var leftSwitch: UISwitch!
    @IBOutlet weak var rightSwitch: UISwitch!
    @IBOutlet weak var doSomethingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Control Fun"
        sliderLabel.text = "50"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func textFieldDoneEditing(sender:UITextField){
        sender.resignFirstResponder()
    }
    
    @IBAction func backgroundTap(sender:UIControl){
        nameField.resignFirstResponder()
        numberField.resignFirstResponder()
    }

    @IBAction func sliderChanged(sender: UISlider) {
        let progress = lroundf(sender.value)
        sliderLabel.text = "\(progress)"
    }
    
    @IBAction func switchChanged(sender: UISwitch) {
        leftSwitch.setOn(sender.on, animated: true)
        rightSwitch.setOn(sender.on, animated: true)
    }
    
    @IBAction func toggleControls(sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            leftSwitch.hidden = false
            rightSwitch.hidden = false
            doSomethingButton.hidden = true
        }else{
            leftSwitch.hidden = true
            rightSwitch.hidden = true
            doSomethingButton.hidden = false
        }
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
        if OSVersion() < 8.0 {
            return
        }
        let controller = UIAlertController(title: "Are you sure?",message: nil,preferredStyle: .ActionSheet)
        let yesAction = UIAlertAction(title: "Yes,I'm sure!",style: .Destructive,handler: {
            action in
            let msg = ((self.nameField.text?.isEmpty) != nil) ? "You can breathe easy,everything went OK." : "You can breathe easy,\(self.nameField.text),everything went OK."
            let controller2 = UIAlertController(title: "Something Was Done",message: msg,preferredStyle: .Alert)
            let cancelAction = UIAlertAction(title: "Phew!",style: .Cancel,handler: nil)
            controller2.addAction(cancelAction)
            self.presentViewController(controller2, animated: true, completion: nil)
            
        })
        let noAction = UIAlertAction(title: "No Way!",style: .Cancel,handler: nil)
        controller.addAction(yesAction)
        controller.addAction(noAction)
        if let ppc = controller.popoverPresentationController {
            ppc.sourceView = sender
            ppc.sourceRect = sender.bounds
        }
        presentViewController(controller, animated: true, completion: nil)
    }
}
