//
//  HILBartData.h
//  Arrival
//
//  Created by Bryce Dougherty on 6/19/15.
//  Copyright (c) 2015 Hi-Lite. All rights reserved.
//

#import <Foundation/Foundation.h>



typedef NS_ENUM(int, station) {
	Rockridge,
	Powell
};



@interface HILBartData : NSObject

@property(nonatomic, strong)id<NSURLConnectionDataDelegate> delegate;

-(NSString *)stationFromName:(station)station;
-(void)getRouteInfo:(station)station destination:(station)destination;

@end
