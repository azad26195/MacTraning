//
//  loginViewController.swift
//  Training
//
//  Created by admin on 07/08/15.
//  Copyright (c) 2015 iMac Student. All rights reserved.
//

import Foundation
import UIKit

class loginViewContoller: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK :- Hide Back Button
        self.navigationItem.setHidesBackButton(true, animated: false)
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.darkGrayColor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func onLoginView(sender: AnyObject) {
        
        if DataManager().verifyPasswordFor(username.text, password: password.text) == true {
                self.performSegueWithIdentifier("gotoGallery", sender: nil)
            
        }
        else{
            var alert = UIAlertController(title: "Error", message: "Username or Password Does not Match", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
    }
 
    
    
}