//
//  HILBartData.m
//  Arrival
//
//  Created by Bryce Dougherty on 6/19/15.
//  Copyright (c) 2015 Hi-Lite. All rights reserved.
//

#import "HILBartData.h"
#import "XMLDictionary.h"

#define gstation(x) [self stationFromName:x]

@implementation HILBartData

-(NSString *)stationFromName:(station)station {
 switch (station) {
  case Rockridge:
		 return @"ROCK";
		 break;
	 case Powell:
		 return @"POWL";
		 break;
		 
  default:
		 return @"all";
		 break;
 }
}

-(void)getRouteInfo:(station)station destination:(station)destination {
	NSString *URLString = [[NSString alloc] initWithFormat:@"http://api.bart.gov/api/sched.aspx?cmd=arrive&orig=%@&dest=%@&date=now&time=now&key=MW9S-E7SL-26DU-VV8V", gstation(station), gstation(destination)];
	NSURL *URL = [NSURL URLWithString:URLString];
	
	NSURLRequest *request = [NSURLRequest requestWithURL:URL];
	NSURLConnection *connection = [NSURLConnection connectionWithRequest:request delegate:self.delegate];
	[connection start];
}



//public func getRouteInfo(origin: station, destination: station) {
//	//let URLString = "http://api.bart.gov/api/sched.aspx?cmd=arrive&orig=\(origin)&dest=\(destination)&date=now&time=now&key=MW9S-E7SL-26DU-VV8V"
//	let URLString = NSString(format: "http://api.bart.gov/api/sched.aspx?cmd=arrive&orig=%@&dest=%@&date=now&time=now&key=MW9S-E7SL-26DU-VV8V", origin.rawValue, destination.rawValue)as String
//	if let URL = NSURL(string: URLString) {
//		
//		let request = NSURLRequest(URL: URL)
//		let connection = NSURLConnection(request: request, delegate: self.delegate, startImmediately: true)
//		
//		
//		
//		
//	}
//}
//
//public func processXML(data: NSData) {
//	let parser = NSXMLParser(data: data)
//	parser.delegate = self
//	parser.parse()
//}
//public func parser(parser: NSXMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [NSObject : AnyObject]) {
//	if (elementName == "item"){
//		return
//	}
//	let name = attributeDict["name"] as! String
//}


@end
