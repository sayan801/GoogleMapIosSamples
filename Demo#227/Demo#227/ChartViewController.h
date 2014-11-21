//
//  ChartViewController.h
//  Demo#227
//
//  Created by technicise on 11/21/14.
//  Copyright (c) 2014 technicise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChartCell.h"
@interface ChartViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic)IBOutlet UILabel *MyLabel;
@property (strong, nonatomic)IBOutlet UIButton *back;
@property (strong, nonatomic)IBOutlet UIButton *menuOutlet;
@property (strong, nonatomic)IBOutlet UILabel *tiltle;
@property (strong, nonatomic)IBOutlet UITableView *tableview;
@end
