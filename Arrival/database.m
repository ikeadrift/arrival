//
//  database.m
//  Arrival
//
//  Created by Ben Zweig on 6/18/15.
//  Copyright (c) 2015 Hi-Lite. All rights reserved.
//

#import "database.h"
@import UIKit;
@interface database ()
@property (nonatomic, strong) UIView* collapsedView1;
@property (nonatomic, strong) UIView* collapsedView2;
@property (nonatomic, strong) UIView* expandedView1;
@property (nonatomic, strong) UIView* expandedView2;
@end


@implementation database

-(NSArray*)getViewArray{
    self.collapsedView1 = self.collapsedView1 ? self.collapsedView1 : [UIView new];
    self.collapsedView2 = self.collapsedView2 ? self.collapsedView2 : [UIView new];
    self.expandedView1 = self.expandedView1 ? self.expandedView1 : [UIView new];
    self.expandedView2 = self.expandedView2 ? self.expandedView2 : [UIView new];
    
    
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
