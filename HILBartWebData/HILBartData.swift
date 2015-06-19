//
//  HILBartData.swift
//  Arrival
//
//  Created by Bryce Dougherty on 6/19/15.
//  Copyright (c) 2015 Hi-Lite. All rights reserved.
//

import UIKit

enum station: String {
	case Rockridge = "ROCK"
	case Powell = "POWL"
	
}

public class HILBartData: NSObject {
	
	func getRouteInfo(origin: station, destination: station) {
		let URLString = "http://api.bart.gov/api/sched.aspx?cmd=arrive&orig=\(origin)&dest=\(destination)&date=now&time=now&key=MW9S-E7SL-26DU-VV8V"
		
		if let URL = NSURL(string: URLString) {
		
			let request = NSURLRequest(URL: URL)
			
			
	
		}
	}
   
}
