//
//  HiWorldViewController.h
//  Demo_#228
//
//  Created by technicise on 11/20/14.
//  Copyright (c) 2014 technicise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HiWorldCell.h"

@interface HiWorldViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UIButton *ADD;
@property (strong, nonatomic)IBOutlet UILabel *Label;
@property (strong, nonatomic)IBOutlet UILabel *upperlabel;
@property (strong, nonatomic) IBOutlet UITableView *myTableview;

@end
