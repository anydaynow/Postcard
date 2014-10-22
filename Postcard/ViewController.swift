//
//  ViewController.swift
//  Postcard
//
//  Created by John on 10/1/14.
//  Copyright (c) 2014 John Olszewski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!

    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        // This line of code updates the 'Hidden' attribute of the variable messageLabel
        
       messageLabel.hidden = false
    
        messageLabel.text = enterMessageTextField.text
        
        messageLabel.textColor = UIColor.redColor()
        
        
        enterMessageTextField.text = ""
        
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState:  UIControlState.Normal)
        
        
    }

}

