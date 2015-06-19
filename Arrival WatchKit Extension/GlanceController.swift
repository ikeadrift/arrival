//
//  GlanceController.swift
//  Arrival WatchKit Extension
//
//  Created by Ben Zweig on 6/19/15.
//  Copyright (c) 2015 Hi-Lite. All rights reserved.
//

import WatchKit
import Foundation
import HILBartWebData



class GlanceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
		let bartData = HILBartData()

        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
