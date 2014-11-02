//
//  ViewController.swift
//  Grand Central Dispatch
//
//  Created by jordan on 02/11/2014.
//  Copyright (c) 2014 jordan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //move to the main thread
        dispatch_async(dispatch_get_main_queue(), { () -> Void in
            //display an alert
            let alert = UIAlertController(title: "GCD", message: "running on main thread", preferredStyle: .Alert)
            let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alert.addAction(action)
            self.presentViewController(alert, animated: true, completion: nil)
            
            //print both the main and current thread, you will see that they are the same.
            println("main thread = \(NSThread.mainThread())")
            println("current thread = \(NSThread.currentThread())")
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

