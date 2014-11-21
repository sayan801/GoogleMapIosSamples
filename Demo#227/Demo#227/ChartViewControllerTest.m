//
//  ChartViewControllerTest.m
//  Demo#227
//
//  Created by technicise on 11/21/14.
//  Copyright (c) 2014 technicise. All rights reserved.
//

#import "ChartViewControllerTest.h"
#import "ChartCell.h"

@interface ChartViewControllerTest ()

@end

@implementation ChartViewControllerTest
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
    Name =[[NSArray alloc]initWithObjects:@"Demographics",@"Providers",@"Care Network",@"Insurence Card", nil];
    ImageArray=[NSArray arrayWithObjects:@"Image1.png",@"Image2.png",@"Image3.png",@"Image4.png",@"Image5.png", nil];
    _tiltle.text=@"PATIENT INFORMATION";
    _gender.text=@"Male";
    _image.image=[UIImage imageNamed:@"29 Settings"];
    _date.text=@"01/06/1990";
    _catagory.text=@"Medical/Labs/BMI";
    _name.text=@"John Appuser";
    
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
    ChartCell *cell = (ChartCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    
    
    if (cell == nil)
    {
        
        //cell = [[HiWorldCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"ChartCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
        // NSLog(@"nib");
        
    }
    
    
    
     CALayer *btnLayer1 = [cell.CellButton layer];
     [btnLayer1 setMasksToBounds:YES];
     [btnLayer1 setCornerRadius:10.0f];
    cell.CellLabel.text=[Name objectAtIndex:indexPath.row];
    cell.celImage.image= [UIImage imageNamed:[ImageArray objectAtIndex:indexPath.row]];

    cell.CellButton.hidden=YES;
       cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    /*UITableViewCell *cell = nil;
    static NSString *AutoCompleteRowIdentifier = @"AutoCompleteRowIdentifier";
    cell = [tableView dequeueReusableCellWithIdentifier:AutoCompleteRowIdentifier];
    
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    
    [cell.textLabel setHighlightedTextColor: [UIColor whiteColor]];
    
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault reuseIdentifier:AutoCompleteRowIdentifier];
    }
    
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
  
    
    cell.textLabel.text=[Name objectAtIndex:indexPath.row];
   */
    /*  cell.name.text=[Name objectAtIndex:indexPath.row];
    cell.gender.text=@"Male";
    cell.date.text=@"01/06/1990";
    cell.catagory.text=@"Medical/Labs/BMI";
    cell.image.image=[UIImage imageNamed:@"29 Settings"];
  */  //cell.textLabel.text=@"Male";
   
    UIView *separatorView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1024, 90)];
    separatorView.layer.borderColor = [UIColor colorWithRed:0.329 green:0.839 blue:0.416 alpha:1].CGColor;
    separatorView.layer.borderColor = [[UIColor lightGrayColor]CGColor];
    separatorView.layer.borderWidth = 1.0;
    [cell.contentView addSubview:separatorView];

    return cell;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
