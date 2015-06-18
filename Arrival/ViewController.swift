//
//  ViewController.swift
//  Arrival
//
//  Created by Hi-Lite Co. on 6/17/15.
//  Copyright (c) 2015 Hi-Lite. All rights reserved.
//
//  Kill the Prime Minister of Malaysia
//

import UIKit

class ViewController: UIViewController, APPaginalTableViewDataSource, APPaginalTableViewDelegate {
    
    var paginalTableView: APPaginalTableView = APPaginalTableView(frame: self.view.bounds)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.blackColor()
        paginalTableView.delegate = self
        paginalTableView.dataSource = self
        self.view.addSubview(paginalTableView)
        
    }
    
    
    //MARK: dataSource
    
    func numberOfElementsInPaginalTableView(paginalTableView: APPaginalTableView!) -> UInt {
        return 3
    }
    
    func paginalTableView(paginalTableView: APPaginalTableView!, collapsedViewAtIndex index: UInt) -> UIView! {
        return nil
    }
    
    func paginalTableView(paginalTableView: APPaginalTableView!, expandedViewAtIndex index: UInt) -> UIView! {
        return nil
    }
    
    //MARK: delegate
    
    func paginalTableView(paginalTableView: APPaginalTableView!, openElementAtIndex index: UInt, onChangeHeightFrom initialHeight: CGFloat, toHeight finalHeight: CGFloat) -> Bool {
        return true
    }
    
    func paginalTableView(paginalTableView: APPaginalTableView!, didSelectRowAtIndex index: UInt) {
        paginalTableView.openElementAtIndex(index: index, completion: nil, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

