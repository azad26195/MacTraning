//
//  ViewController.swift
//  Training
//
//  Created by admin on 07/08/15.
//  Copyright (c) 2015 iMac Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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


}

