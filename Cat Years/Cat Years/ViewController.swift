//
//  ViewController.swift
//  Cat Years
//
//  Created by Apoorv singh on 12/18/14.
//  Copyright (c) 2014 Apricot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var catAge: UITextField!
    
    
    @IBOutlet weak var result: UILabel!
    @IBAction func buttonPressed(sender: AnyObject) {
        var ageEntered=catAge.text.toInt()
        
        if ageEntered != nil {
       
        var catYears = ageEntered! * 7
        result.text="Your cat is \(catYears) in cat years"
       
        } else {
            result.text="Please enter in the box"
            
        }
        
   }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

