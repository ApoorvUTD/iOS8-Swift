//
//  ViewController.swift
//  Weather App
//
//  Created by Apoorv singh on 1/4/15.
//  Copyright (c) 2015 Apricot. All rights reserved.
//

import UIKit
import Foundation



class ViewController: UIViewController {

    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var message: UILabel!
    @IBAction func buttonPressed(sender: AnyObject) {
        
        self.view.endEditing(true)
        var urlString = "http://www.weather-forecast.com/locations/" + city.text.stringByReplacingOccurrencesOfString(" ", withString: "") + "/forecasts/latest"
        
        var url = NSURL(string : urlString)
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data , response , error) in
        
           var urlContent = NSString(data : data, encoding : NSUTF8StringEncoding)
            
           
            
            if urlContent!.containsString("<span class=\"phrase\">") {
            var contentArray = urlContent?.componentsSeparatedByString("<span class=\"phrase\">")
            
            var newContentArray = contentArray?[1].componentsSeparatedByString("</span>")
            
            var result = newContentArray?[0].stringByReplacingOccurrencesOfString("&deg;", withString: "º")
                dispatch_async(dispatch_get_main_queue()){
            
            self.message.text = result! as String
                    
                }
            } else {
            
                dispatch_async(dispatch_get_main_queue()){
            self.message.text = "Couldn't find the city - Please try again"
                }
            
            }
            
        }
        
        task.resume()
        
        
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

