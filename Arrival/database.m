//
//  database.m
//  Arrival
//
//  Created by Ben Zweig on 6/18/15.
//  Copyright (c) 2015 Hi-Lite. All rights reserved.
//

#import "database.h"
@import UIKit;

@implementation database

-(NSArray*)getViewArray{
    return @[
      @{
          @"collapsedView"    :   [UIView new],
          @"expandedView"    :   [UIView new],
          },
      
      @{
          @"collapsedView"    :   [UIView new],
          @"expandedView"    :   [UIView new],
          }
      ];
}

+ (id)sharedInstance
{
    static database *sharedDatabase = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedDatabase = [[self alloc] init];
    });
    return sharedDatabase;
}

@end
