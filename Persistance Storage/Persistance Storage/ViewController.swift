//
//  ViewController.swift
//  Persistance Storage
//
//  Created by Apoorv singh on 1/2/15.
//  Copyright (c) 2015 Apricot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  /**  var array = ["Apoorv","Jagan","Thulasi","Ankit","Valay"]
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
    return array.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
    let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        
     cell.textLabel?.text = array[indexPath.row]
        return cell
        
    }
**/

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //NSUserDefaults.standardUserDefaults().setObject("Apoorv", forKey: "names")
        //NSUserDefaults.standardUserDefaults().synchronize()
        println(NSUserDefaults.standardUserDefaults().objectForKey("names")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

