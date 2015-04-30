//
//  ViewController.swift
//  StopWatch
//
//  Created by Apoorv singh on 1/2/15.
//  Copyright (c) 2015 Apricot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var time: UILabel!
    var timer = NSTimer()
    
    var count = 0
    @IBAction func play(sender: AnyObject) {
        
         timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("Result"), userInfo: nil, repeats: true)
    }
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func reset(sender: AnyObject) {
        
        timer.invalidate()
        count = 0
        time.text = "0"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    func Result() {
        count++
       time.text = String(count)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

