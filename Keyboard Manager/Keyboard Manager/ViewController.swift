//
//  ViewController.swift
//  Keyboard Manager
//
//  Created by Apoorv singh on 1/2/15.
//  Copyright (c) 2015 Apricot. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    
    @IBOutlet weak var label: UILabel!
    @IBAction func button(sender: AnyObject) {
        
        label.text = textField.text
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
        }
   override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        
        self.view.endEditing(true)
    
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    
    
    }


}

