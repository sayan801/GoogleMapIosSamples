//
//  ChartViewController.m
//  Demo#227
//
//  Created by technicise on 11/21/14.
//  Copyright (c) 2014 technicise. All rights reserved.
//

#import "ChartViewController.h"

@interface ChartViewController ()
{
    NSArray *ImageArray;
    NSArray *Name;
}



@end

@implementation ChartViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    Name =[[NSArray alloc]initWithObjects:@"AbhikDas",@"Rita",@"AmitPaul", nil];
      _tiltle.text=@"PATIENT INFORMATION";
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger) section
{
    return [Name count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    ChartCell *cell = (ChartCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    
    
    if (cell == nil)
    {
        
        //cell = [[HiWorldCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"ChartCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
        // NSLog(@"nib");
        
    }
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    cell.name.text=[Name objectAtIndex:indexPath.row];
    cell.gender.text=@"Male";
    cell.date.text=@"01/06/1990";
    cell.catagory.text=@"Medical/Labs/BMI";
     cell.image.image=[UIImage imageNamed:@"29 Settings"];
    
    
    return cell;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
