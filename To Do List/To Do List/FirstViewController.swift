//
//  FirstViewController.swift
//  To Do List
//
//  Created by Apoorv singh on 1/3/15.
//  Copyright (c) 2015 Apricot. All rights reserved.
//

import UIKit

var toDOItems:[String] = []

class FirstViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet var taskTable:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
    return toDOItems.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
    var cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = toDOItems[indexPath.row]
        
        return cell
    }
    override func viewWillAppear(animated: Bool) {
    //we will retrive data permanently here as it will be beneficial everytime app loads
    toDOItems = []
    if var storedToDoItem: AnyObject = NSUserDefaults.standardUserDefaults().objectForKey("toDO") {
    for var i = 0; i < storedToDoItem.count; ++i {
     toDOItems.append( storedToDoItem[i] as NSString)
        }
        }
        taskTable.reloadData()
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        
        if (editingStyle == UITableViewCellEditingStyle.Delete){
            toDOItems.removeAtIndex(indexPath.row)
            let fixedToDoItem = toDOItems
            //done because NSUSer need immutable object and stores the valure of the list permanently now we need to retrieve it
            NSUserDefaults.standardUserDefaults().setObject(fixedToDoItem, forKey: "toDO")
            NSUserDefaults.standardUserDefaults().synchronize()
            
            taskTable.reloadData()
        }
    }

}

