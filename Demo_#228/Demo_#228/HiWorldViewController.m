//
//  HiWorldViewController.m
//  Demo_#228
//
//  Created by technicise on 11/20/14.
//  Copyright (c) 2014 technicise. All rights reserved.
//

#import "HiWorldViewController.h"
#import "HiWorldCell.h"

@interface HiWorldViewController ()

@end

@implementation HiWorldViewController
{
    NSArray *ImageArray;
    NSArray *Name;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    Name =[[NSArray alloc]initWithObjects:@"AbhikDas",@"Puspita",@"AmitPaul",@"Amitabha Roy",@"Souman", nil];
    _Label.text=@"Create Chart";


}




- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger) section
{
    return [Name count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    HiWorldCell *cell = (HiWorldCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    
    
    if (cell == nil)
    {
       
           cell = [[HiWorldCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        /* NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"HiWorldCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
        // NSLog(@"nib");
       */
    }
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
   // cell.Chartlabel.text=[Name objectAtIndex:indexPath.row];
    //
    cell.relationlabel.text=@"Relation";
    
    cell.imageView.image=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"samplemedia1preview"]];
    return cell;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
