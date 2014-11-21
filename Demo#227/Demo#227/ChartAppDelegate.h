//
//  ChartAppDelegate.h
//  Demo#227
//
//  Created by technicise on 11/21/14.
//  Copyright (c) 2014 technicise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChartViewControllerTest.h"
@class ChartViewControllerTest;
@interface ChartAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) ChartViewControllerTest *ChartViewControllerTest;
@property (strong, nonatomic) UINavigationController *navigationController;
@end
