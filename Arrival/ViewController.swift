//
//  ViewController.swift
//  Arrival
//
//  Created by Hi-Lite Co. on 6/17/15.
//  Copyright (c) 2015 Hi-Lite. All rights reserved.
//
//  Kill the Prime Minister of Malaysia
//





////Array:
//      1 (Dictionary):
//
//          Expanded	:	View
//			Collapsed	:	View
//
//		2 (Dictionary):
//
//			Expanded	:	View
//			Collapsed	:	View
//


import UIKit

class ViewController: UIViewController, SwipeViewDelegate, SwipeViewDataSource {
    
    var swipeView: SwipeView?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.swipeView = SwipeView(frame: self.view.bounds)
        swipeView?.dataSource = self
        swipeView?.delegate = self
        
        
        
        self.view.backgroundColor = UIColor.blackColor()
       
        self.view.addSubview(swipeView!)
        
        let refreshButton = UIButton 
    }
    
    
    //MARK: dataSource
    
    func numberOfItemsInSwipeView(swipeView: SwipeView!) -> Int {
        return database.sharedInstance().viewArray.count
    }
    func swipeView(swipeView: SwipeView!, viewForItemAtIndex index: Int, reusingView view: UIView!) -> UIView! {
        let array = database.sharedInstance().viewArray
        let view = (array as Array)[index] as! UIView
        view.frame = self.view.bounds
        return view
    }
    
    //MARK: delegate

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

