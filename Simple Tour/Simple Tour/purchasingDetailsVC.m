//
//  purchasingDetailsVC.m
//  Simple Tour
//
//  Created by 陈浩贤 on 16/1/15.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import "purchasingDetailsVC.h"

@implementation purchasingDetailsVC
-(instancetype)init
{
    TableData *data=[[TableData alloc]init];
    puchasingDetails=[[NSMutableArray alloc]init];
    puchasingDetails=[data getPurchasingDetailsOfLeftTable];
    leftTable=[[UITableView alloc]init];
    leftTable.delegate=self;
    leftTable.dataSource=self;
    

    
    return self;
}

-(void)viewDidLoad
{
    table=[[secondRightTable alloc]init];
    table.view.translatesAutoresizingMaskIntoConstraints=NO;
    [self.view addSubview:table.view];
    [self.view addSubview:leftTable];
    leftTable.translatesAutoresizingMaskIntoConstraints=NO;
    [self addConstrains];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [puchasingDetails count];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150;
}

-(detailsCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    detailsCell *Cell=[[detailsCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"detailsCell"];
    Cell.titleLabel.text=[puchasingDetails objectAtIndex:indexPath.row];
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
    NSLog(@"purchasing details did disappear");
}
@end
