//
//  travellerInfoVC.m
//  Simple Tour
//
//  Created by 陈浩贤 on 16/1/15.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import "travellerInfoVC.h"

@implementation travellerInfoVC
-(instancetype)init
{
    TableData *tabledata=[[TableData alloc]initWithTravellerInfoOfLeftTable];
    data=[[NSMutableArray alloc]init];
    travels=[[NSMutableArray alloc]init];
    startAndArrivalTimes=[[NSMutableArray alloc]init];
    plateNumbers=[[NSMutableArray alloc]init];
    date=[[NSMutableArray alloc]init];
    numbers=[[NSMutableArray alloc]init];
    
    data=[tabledata getTravels];
    travels=[tabledata getTravels];
    startAndArrivalTimes=[tabledata getStartAndArrivalTimes];
    plateNumbers=[tabledata getPlateNumbers];
    date=[tabledata getDate];
    numbers=[tabledata getNumbers];
    
    leftTable=[[UITableView alloc]init];
    leftTable.dataSource=self;
    leftTable.delegate=self;
    
    myTable=[[firstRightTable alloc]init];
    myTable.travellers=[tabledata getTravellers];
    myTable.seatNumbers=[tabledata getSeatNumbers];
    myTable.plateNumbers=[tabledata getPlateNumbers];
    myTable.companys=[tabledata getCompanies];
    myTable.places=[tabledata getPlaces];
    myTable.travelTimes=[tabledata gettravelTimes];
    myTable.carNumbers=[tabledata getCarNumbers];
    

    return self;
}
-(void)viewDidLoad
{
    
    [self.view addSubview:leftTable];
    [self.view addSubview:myTable.view];
    leftTable.translatesAutoresizingMaskIntoConstraints=NO;
    myTable.view.translatesAutoresizingMaskIntoConstraints=NO;
    [self addContrains];
    
    [leftTable registerClass:[LeftTableCell class] forCellReuseIdentifier:@"travellerInfoCell"];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [data count];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    

    LeftTableCell *tableCell=[[LeftTableCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"travellerInfoCell"];

    tableCell.titleLabel.text=[travels objectAtIndex:indexPath.row];
    tableCell.timeLabel.text=[startAndArrivalTimes objectAtIndex:0];
    tableCell.plateLabel.text=[plateNumbers objectAtIndex:0];
    tableCell.dateLabel.text=[date objectAtIndex:indexPath.row];
    tableCell.numberLabel.text=[numbers objectAtIndex:0];

    [tableCell addCons];
    
    return tableCell;
}

-(void)addContrains
{
    NSDictionary *viewsDic=[[NSDictionary alloc]init];
    UIView *rightTable=myTable.view;
    viewsDic=NSDictionaryOfVariableBindings(leftTable,rightTable);
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[leftTable(1000)]" options:0 metrics:nil views:viewsDic]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[leftTable(200)]-0-[rightTable]|" options:0 metrics:nil views:viewsDic]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[rightTable]|" options:0 metrics:nil views:viewsDic]];
    
}

-(void)viewDidDisappear:(BOOL)animated
{
    NSLog(@"travellerInfo did disappear");
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row==0) {
        myTable.placeIndex=0;
    }else if (indexPath.row==1){
        myTable.placeIndex=1;
    }else if (indexPath.row==2){
        myTable.placeIndex=2;
    }else if (indexPath.row==3){
        myTable.placeIndex=3;
    }
    [myTable reloadTableData];
    
}
@end
