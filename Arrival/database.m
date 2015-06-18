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
@end


@implementation database

-(id)init{
    self = [super init];
    NSArray* viewArray = @[
                       [self coloredView:[UIColor redColor]],
                       [self coloredView:[UIColor orangeColor]],
                       [self coloredView:[UIColor greenColor]],
                       [self coloredView:[UIColor blueColor]],
                       [self coloredView:[UIColor purpleColor]],
                       [self coloredView:[UIColor yellowColor]]
                       ];
    self.viewArray = [[NSMutableArray alloc] initWithArray:viewArray];
    return self;
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
