//
//  DataManager.swift
//  Training
//
//  Created by admin on 10/08/15.
//  Copyright (c) 2015 iMac Student. All rights reserved.
//

import Foundation

class DataManager {
    //MARK :- Persistant Storage
    var userDefaults = NSUserDefaults.standardUserDefaults()
    
    init () {}
    
    func addUser(username: String, password: String){
        userDefaults.setObject(password, forKey: username)
    }
    
    func verifyPasswordFor(username: String, password: String) -> Bool {
       // print(password == userDefaults.valueForKey(username) as String)
       //Check key Exists
        if username != "" || password != "" {
            if NSUserDefaults.standardUserDefaults().objectForKey(username) != nil{
                return password == (userDefaults.valueForKey(username) as String)
            }
            else {
                return false
            }
        }
        else{
            return false
        }
    }
}