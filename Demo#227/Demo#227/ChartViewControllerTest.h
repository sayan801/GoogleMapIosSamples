//
//  ChartViewControllerTest.h
//  Demo#227
//
//  Created by technicise on 11/21/14.
//  Copyright (c) 2014 technicise. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChartViewControllerTest : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic)IBOutlet UILabel *MyLabel;
@property (strong, nonatomic)IBOutlet UIButton *back;
@property (strong, nonatomic)IBOutlet UIButton *menuOutlet;
@property (strong, nonatomic)IBOutlet UILabel *tiltle;
@property (strong, nonatomic)IBOutlet UITableView *tableview;





@property (strong, nonatomic) IBOutlet UILabel *gender;
@property (strong, nonatomic) IBOutlet UILabel *date;
@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UILabel *catagory;
@property (strong, nonatomic) IBOutlet UIImageView *image;
//@property (strong, nonatomic) IBOutlet UIImageView *sideimage;
@property (strong, nonatomic) IBOutlet UIButton *sideButton;
@end
