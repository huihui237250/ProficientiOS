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
    
    @IBAction func textFieldDoneEditing(_ sender:UITextField){
        sender.resignFirstResponder()
    }
    
    @IBAction func backgroundTap(_ sender:UIControl){
        nameField.resignFirstResponder()
        numberField.resignFirstResponder()
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        let progress = lroundf(sender.value)
        sliderLabel.text = "\(progress)"
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        leftSwitch.setOn(sender.isOn, animated: true)
        rightSwitch.setOn(sender.isOn, animated: true)
    }
    
    @IBAction func toggleControls(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            leftSwitch.isHidden = false
            rightSwitch.isHidden = false
            doSomethingButton.isHidden = true
        }else{
            leftSwitch.isHidden = true
            rightSwitch.isHidden = true
            doSomethingButton.isHidden = false
        }
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if OSVersion() < 8.0 {
            return
        }
        let controller = UIAlertController(title: "Are you sure?",message: nil,preferredStyle: .actionSheet)
        let yesAction = UIAlertAction(title: "Yes,I'm sure!",style: .destructive,handler: {
            action in
            let msg = ((self.nameField.text?.isEmpty) != nil) ? "You can breathe easy,everything went OK." : "You can breathe easy,\(self.nameField.text),everything went OK."
            let controller2 = UIAlertController(title: "Something Was Done",message: msg,preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "Phew!",style: .cancel,handler: nil)
            controller2.addAction(cancelAction)
            self.present(controller2, animated: true, completion: nil)
            
        })
        let noAction = UIAlertAction(title: "No Way!",style: .cancel,handler: nil)
        controller.addAction(yesAction)
        controller.addAction(noAction)
        if let ppc = controller.popoverPresentationController {
            ppc.sourceView = sender
            ppc.sourceRect = sender.bounds
        }
        present(controller, animated: true, completion: nil)
    }
}
