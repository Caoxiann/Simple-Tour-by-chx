//
//  firstRightTable.m
//  Simple Tour
//
//  Created by 陈浩贤 on 16/1/22.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import "firstRightTable.h"

@implementation firstRightTable

-(instancetype)init
{
    UITableView *rightTable=[[UITableView alloc]init];
    rightTable.dataSource=self;
    rightTable.delegate=self;
    rightTable.translatesAutoresizingMaskIntoConstraints=NO;
    [self.view addSubview:rightTable];
    
    NSDictionary *viewsDic=[[NSDictionary alloc]init];
    viewsDic=NSDictionaryOfVariableBindings(rightTable);
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[rightTable]|" options:0 metrics:nil views:viewsDic]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[rightTable]|" options:0 metrics:nil views:viewsDic]];
    
    return self;
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150;
}

-(firstRightTableCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    firstRightTableCell *cell=[[firstRightTableCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell.travellerLabel.text=[self.travellers objectAtIndex:0];
    cell.seatNumberLabel.text=[self.seatNumbers objectAtIndex:0];
    cell.plateNumberLabel.text=[self.plateNumbers objectAtIndex:1];
    cell.companyLabel.text=[self.companys objectAtIndex:0];
    cell.placeLabel.text=[self.places objectAtIndex:0];
    cell.travelTimeLabel.text=[self.travelTimes objectAtIndex:0];
    cell.carNumberLabel.text=[self.carNumbers objectAtIndex:0];
    [cell addCons];
    

    return cell;
    
}

@end
