//
//  DayOrderVC.m
//  Simple Tour
//
//  Created by 陈浩贤 on 16/1/15.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import "DayOrderVC.h"

@implementation DayOrderVC
-(instancetype)init
{
    TableData *data=[[TableData alloc]init];
    dailyOrder=[[NSMutableArray alloc]init];
    dailyOrder=[data getDailyOrdersOfLeftTable];
    leftTable=[[UITableView alloc]init];
    leftTable.delegate=self;
    leftTable.dataSource=self;
    return self;
}

-(void)viewDidLoad
{
    [self.view addSubview:leftTable];
    leftTable.translatesAutoresizingMaskIntoConstraints=NO;
    table=[[secondRightTable alloc]init];
    table.view.translatesAutoresizingMaskIntoConstraints=NO;
    [self.view addSubview:table.view];
    [self addConstrains];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [dailyOrder count];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150;
}

-(detailsCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    detailsCell *Cell=[[detailsCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"detailsCell"];
    Cell.titleLabel.text=[dailyOrder objectAtIndex:indexPath.row];
    [Cell addCons];
    
    return Cell;
}

-(void)addConstrains
{
    UIView *rightTable=table.view;
    NSLog(@"superview:%@",rightTable);
    
    NSDictionary *viewsDic=[[NSDictionary alloc]init];
    viewsDic=NSDictionaryOfVariableBindings(leftTable,rightTable);
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-40-[leftTable(1000)]" options:0 metrics:nil views:viewsDic]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[leftTable(200)]-0-[rightTable]|" options:0 metrics:nil views:viewsDic]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-40-[rightTable]|" options:0 metrics:nil views:viewsDic]];
}

-(void)viewDidDisappear:(BOOL)animated
{
    NSLog(@"day order did disappear");
}
@end
