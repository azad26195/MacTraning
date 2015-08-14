//
//  galleryViewController.swift
//  Training
//
//  Created by admin on 07/08/15.
//  Copyright (c) 2015 iMac Student. All rights reserved.
//

import Foundation
import UIKit

class galleryViewController: UIViewController /*, UIPickerViewDataSource,UIPickerViewDelegate */{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.imgView.image = UIImage(named: "img1") // First Image
        
        var leftSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        var rightSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        
        leftSwipe.direction = .Left
        rightSwipe.direction = .Right
        
        view.addGestureRecognizer(leftSwipe)
        view.addGestureRecognizer(rightSwipe)

        //MARK :- Hide Back Button
        self.navigationItem.setHidesBackButton(true, animated: false)
        self.view.backgroundColor = UIColor.darkGrayColor()
    }
    
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    @IBOutlet weak var pickerV: UIPickerView!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var segment: UISegmentedControl!
    
    let imgList = ["img1", "img2", "img3"]
    var currentIndex = 0
    
    func handleSwipes(sender:UISwipeGestureRecognizer){
        if (sender.direction == .Left){
            self.currentIndex++
            self.objSegment.selectedSegmentIndex = self.currentIndex
            if self.currentIndex >= self.imgList.count{
                self.currentIndex = 0
                self.objSegment.selectedSegmentIndex = 0
            }
        }
        
        if (sender.direction == .Right){
            self.currentIndex--
            self.objSegment.selectedSegmentIndex = self.currentIndex
            if self.currentIndex < 0 {
                self.currentIndex = self.imgList.count - 1
                self.objSegment.selectedSegmentIndex = self.imgList.count - 1
            }
        }
        
        // MARK :- Display the Image
        
        self.imgView.image = UIImage(named: self.imgList[self.currentIndex])
    }
    
    //MARK :- Picker View
    
//    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
//        return 1
//    }
//    
//    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return self.imgList.count
//    }
//
//    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
//        self.imgView.image = UIImage(named: self.imgList[row])
//        return self.imgList[row]
//    }
    
    // MARK :- SEGMENT
    @IBOutlet weak var objSegment: UISegmentedControl!
    
    @IBAction func segmentSelectOption(sender: AnyObject) {
        self.imgView.image = UIImage(named: self.imgList[objSegment.selectedSegmentIndex])
        self.currentIndex = self.objSegment.selectedSegmentIndex
    }
    
}
