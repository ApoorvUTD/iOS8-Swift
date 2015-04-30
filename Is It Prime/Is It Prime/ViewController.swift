//
//  ViewController.swift
//  Is It Prime
//
//  Created by Apoorv singh on 12/30/14.
//  Copyright (c) 2014 Apricot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var Input: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func checkPrime(sender: AnyObject) {
        
        var number1 = Input.text.toInt()
        var number = number1!
        
        var isPrime = true
        
        if number1 != nil {
        if number == 1{
            isPrime = false
        }
        
        if number != 2 && number != 1 {
            for var i=2; i < number; i++ {
                
                if number  % i == 0 {
                    
                    isPrime = false
                    
                }
            }
        }
            
            if isPrime == true {
            result.text = "\(number) is a Prime"
            }else {
                result.text = "\(number) is not Prime"
            }

        }else{
        
        result.text = "Please Enter The Number"
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

