//
//  HiWorldAppDelegate.h
//  Demo_#228
//
//  Created by technicise on 11/20/14.
//  Copyright (c) 2014 technicise. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "HiWorldViewController.h"
#import "HiWorldViewControllertest.h"
@class HiWorldViewControllertest;
//@class HiWorldViewController;
@interface HiWorldAppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) HiWorldViewControllertest *HiWorldViewControllertest;
@property(strong, nonatomic) UINavigationController *navigationController;

//@property(strong,nonatomic)
@end
