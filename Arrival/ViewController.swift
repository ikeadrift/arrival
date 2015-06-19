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
import HILBartWebData

class ViewController: UIViewController, SwipeViewDelegate, SwipeViewDataSource, NSURLConnectionDataDelegate {
    
    var swipeView: SwipeView?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.swipeView = SwipeView(frame: self.view.bounds)
        swipeView?.dataSource = self
        swipeView?.delegate = self
        
        
        let bartData = HILBartData()
        bartData.delegate = self
		bartData.getRouteInfo(station.Rockridge, destination: station.Powell)
		
        self.view.backgroundColor = UIColor.blackColor()
       
        self.view.addSubview(swipeView!)
        
        let refreshButton = UIButton(frame: CGRectMake(20, 20, 100, 30))
        refreshButton.setTitle("refresh", forState: .Normal)
        refreshButton.addTarget(self, action: "setColors", forControlEvents: .TouchUpInside)
        self.view.addSubview(refreshButton)
    }
    
    func setColors() {
        var array = Array<UIView>()
        array.append(database.sharedInstance().coloredView(UIColor.blackColor()))
        array.append(database.sharedInstance().coloredView(UIColor.redColor()))
        let mutableArray = NSMutableArray(array: array)
        database.sharedInstance().viewArray = mutableArray
        self.swipeView?.reloadData()
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
	
	func connection(connection: NSURLConnection, didReceiveData data: NSData) {
		println(NSString(data: data, encoding: NSUTF8StringEncoding))
	}
	
	
    
    //MARK: delegate

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

