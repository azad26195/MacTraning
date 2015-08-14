//
//  signUpViewContoller.swift
//  Training
//
//  Created by admin on 07/08/15.
//  Copyright (c) 2015 iMac Student. All rights reserved.
//

import Foundation
import UIkit

class signUpViewContoller: UIViewController
{
    
    //MARK  :- variable declaration
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirm: UITextField!
    var dm = DataManager()
    
    //MARK :- alert Function Creation
    func alert(titleMsg : String , msg : String){
        var alert = UIAlertController(title: titleMsg, message: msg , preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion:nil)
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.darkGrayColor()
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func submit_btn(sender: AnyObject) {
        
        //MARK :- Data Validation
        if (password.text == "" || username.text == "" || confirm.text == "" ){
            alert("Error", msg:"Username or Password cannot be blank")
        }
        else if(!password.text.isEqual(confirm.text)){
            alert("Error", msg: "Password did not matched.")
            
        }
        else {
            dm.addUser(username.text, password: password.text)
            //MARK :- After succesful signup prompt alert and on ok action divert to login
            var alert = UIAlertController(title: "Success", message: "User Added" , preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.Default,  handler:  { action in self.performSegueWithIdentifier("login", sender: self)}))
            self.presentViewController(alert, animated: true, completion:nil)
           
            
            
        }
    }
    
}
