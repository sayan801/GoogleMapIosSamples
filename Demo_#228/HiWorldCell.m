//
//  HiWorldCell.m
//  Demo_#228
//
//  Created by technicise on 11/20/14.
//  Copyright (c) 2014 technicise. All rights reserved.
//

#import "HiWorldCell.h"

@implementation HiWorldCell
@synthesize mybutton,mylabel,relationlabel;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    
   
    /*CALayer *btnLayer1 = [mybutton layer];
    [btnLayer1 setMasksToBounds:YES];
    [btnLayer1 setCornerRadius:30.0f];
    
    mybutton.layer.borderWidth = 2;
    
    mybutton.layer.borderColor = [[UIColor colorWithRed:0.329 green:0.839 blue:0.416 alpha:1]CGColor];
    mybutton.tintColor =[UIColor colorWithRed:0.329 green:0.839 blue:0.416 alpha:1];
   */
      return self;
}
/*- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CALayer *btnLayer1 = [mybutton layer];
    [btnLayer1 setMasksToBounds:YES];
    [btnLayer1 setCornerRadius:30.0f];
    
    self.mybutton.layer.borderWidth = 2;
    
    self.mybutton.layer.borderColor = [[UIColor colorWithRed:0.329 green:0.839 blue:0.416 alpha:1]CGColor];
    self.mybutton.tintColor =[UIColor colorWithRed:0.329 green:0.839 blue:0.416 alpha:1];

}
*/
- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
