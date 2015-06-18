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
    self.collapsedView1 = self.collapsedView1 ? self.collapsedView1 : [self coloredView:[UIColor greenColor]];
    self.collapsedView2 = self.collapsedView2 ? self.collapsedView2 : [self coloredView:[UIColor orangeColor]];
    self.expandedView1 = self.expandedView1 ? self.expandedView1 : [self coloredView:[UIColor redColor]];
    self.expandedView2 = self.expandedView2 ? self.expandedView2 : [self coloredView:[UIColor blueColor]];
    
    
    
    return @[
             self.collapsedView1,
             self.collapsedView2
      ];
}

-(UIView *) coloredView:(UIColor *) color{
    UIView * view = [UIView new];
    view.backgroundColor = color;
    return view;
}

+(id)sharedInstance
{
    static database *sharedDatabase = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedDatabase = [[self alloc] init];
    });
    return sharedDatabase;
}

@end
