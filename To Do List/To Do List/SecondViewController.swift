//
//  SecondViewController.swift
//  To Do List
//
//  Created by Apoorv singh on 1/3/15.
//  Copyright (c) 2015 Apricot. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController , UITextFieldDelegate{
    
    

    @IBOutlet weak var toDoItem: UITextField!
    
    @IBAction func addItem(sender: AnyObject) {
        
    toDOItems.append(toDoItem.text)
        
        
        let fixedToDoItem = toDOItems
        //done because NSUSer need immutable object and stores the valure of the list permanently now we need to retrieve it
         NSUserDefaults.standardUserDefaults().setObject(fixedToDoItem, forKey: "toDO")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        
        self.view.endEditing(true)
        
        
        
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
    
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return true
    }


}

