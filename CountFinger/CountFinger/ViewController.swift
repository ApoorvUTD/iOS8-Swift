//
//  ViewController.swift
//  CountFinger
//
//  Created by Apoorv singh on 12/30/14.
//  Copyright (c) 2014 Apricot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guess: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func guessButton(sender: AnyObject) {
        var randomNumber = arc4random_uniform(6)
        var guessInt = guess.text.toInt()
        
        if guessInt != nil {
            
            if Int(randomNumber) == guessInt {
            resultLabel.text = "Hola,congrats"
            } else {
            resultLabel.text = "Sorry,Nope it was \(randomNumber)"
            }
        
        }
        else {
            
            resultLabel.text = "Please enter number between 0-5"
                }
        
        println(guess.text)

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

