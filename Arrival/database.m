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

+(NSArray*)getViewArray{
    return @[
      @{
          @"collapsedController"    :   [UIView new],
          @"expandedController"    :   [UIView new],
          
          
          },
      
      @{
          @"collapsedController"    :   [UIView new],
          @"expandedController"    :   [UIView new],
          
          
          }
      ];
}

@end
