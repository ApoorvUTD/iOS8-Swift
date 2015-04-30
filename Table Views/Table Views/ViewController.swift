//
//  ViewController.swift
//  Table Views
//
//  Created by Apoorv singh on 1/2/15.
//  Copyright (c) 2015 Apricot. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate {
    
    let array = ["Apoorv","Ankit","Papa","Mummy"]
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
    
    return array.count
    
    }
    
   func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{

    let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = array[indexPath.row]
    
        return cell
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

