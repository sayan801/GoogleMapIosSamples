//
//  HiWorldCell.h
//  Demo_#228
//
//  Created by technicise on 11/20/14.
//  Copyright (c) 2014 technicise. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HiWorldCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *mylabel;
@property (strong, nonatomic) IBOutlet UILabel *relationlabel;
@property (strong, nonatomic) IBOutlet UIButton *mybutton;
@property (strong, nonatomic) IBOutlet UIImageView *image;

-(IBAction)notification:(id)sender;
@end
