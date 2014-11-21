//
//  HiWorldViewControllertest.m
//  Demo_#228
//
//  Created by technicise on 11/20/14.
//  Copyright (c) 2014 technicise. All rights reserved.
//

#import "HiWorldViewControllertest.h"
#import "HiWorldCell.h"


@interface HiWorldViewControllertest ()

@end

@implementation HiWorldViewControllertest
{
    NSArray *ImageArray;
    NSArray *Name;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    Name =[[NSArray alloc]initWithObjects:@"Chart User Name",@"Chart User Name",@"Chart User Name",@"Chart User Name", @"Chart User Name",nil];
    _ChartLabel.text=@"Create Chart";
    //chartla.text=@"Create Chart";
   _upperlabel.text=@"CHART";
    
   // HiWorldCell *cell=[[HiWorldCell alloc]init];
    _ChartLabel.numberOfLines=0;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger) section
{
    return [Name count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 90;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    HiWorldCell *cell = (HiWorldCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    
    
    if (cell == nil)
    {
        
        //cell = [[HiWorldCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"HiWorldCell" owner:self options:nil];
         cell = [nib objectAtIndex:0];
         // NSLog(@"nib");
         
    }
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
   
    
    CALayer *btnLayer1 = [cell.mybutton layer];
    [btnLayer1 setMasksToBounds:YES];
    [btnLayer1 setCornerRadius:10.0f];
    
   // cell.mybutton.layer.borderWidth = 2;
    
    //cell.mybutton.layer.borderColor = [[UIColor colorWithRed:0.329 green:0.839 blue:0.416 alpha:1]CGColor];
   // cell.mybutton.tintColor =[UIColor colorWithRed:0.329 green:0.839 blue:0.416 alpha:1];
    
    
    /*
    UIView *separatorView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1024, 90)];
    separatorView.layer.borderColor = [UIColor colorWithRed:0.329 green:0.839 blue:0.416 alpha:1].CGColor;
    separatorView.layer.borderColor = [[UIColor lightGrayColor]CGColor];
    separatorView.layer.borderWidth = 1.0;
    [cell.contentView addSubview:separatorView];
    */
    UIView *separatorView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1024, 90)];
    // separatorView.layer.borderColor = [UIColor colorWithRed:0.329 green:0.839 blue:0.416 alpha:1].CGColor;
    separatorView.layer.borderColor = [[UIColor lightGrayColor]CGColor];
    separatorView.layer.borderWidth = 1.0;
    [cell.contentView addSubview:separatorView];
    
    cell.mylabel.text=[Name objectAtIndex:indexPath.row];
   // cell.textLabel.text=[Name objectAtIndex:indexPath.row];
   cell.image.image=[UIImage imageNamed:@"29 Settings"];
    cell.relationlabel.text=@"Relation";


   /*
    cell.mylabel.text=[Name objectAtIndex:indexPath.row];
    cell.image.image=[UIImage imageNamed:@"samplemedia1preview"];
    */
    
    return cell;
}

@end
