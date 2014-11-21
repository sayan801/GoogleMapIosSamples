//
//  ChartCell.m
//  Demo#227
//
//  Created by technicise on 11/21/14.
//  Copyright (c) 2014 technicise. All rights reserved.
//

#import "ChartCell.h"

@implementation ChartCell
@synthesize CellButton,CellLabel;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
