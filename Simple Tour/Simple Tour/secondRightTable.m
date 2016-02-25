//
//  secondRightTable.m
//  Simple Tour
//
//  Created by 陈浩贤 on 16/1/23.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import "secondRightTable.h"

@implementation secondRightTable

-(instancetype)init
{
    rightTable=[[UITableView alloc]init];
    rightTable.delegate=self;
    rightTable.dataSource=self;
    rightTable.translatesAutoresizingMaskIntoConstraints=NO;
    [self.view addSubview:rightTable];
    
    data=[[TableData alloc]init];
    
    
    NSDictionary *viewsDic=[[NSDictionary alloc]init];
    viewsDic=NSDictionaryOfVariableBindings(rightTable);
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[rightTable]|" options:0 metrics:nil views:viewsDic]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[rightTable]|" options:0 metrics:nil views:viewsDic]];
    
    data.travelIndex=10;
    self.indexOfTravels=10;
    return self;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (self.indexOfTravels==0) {
        data.travelIndex=0;
        return 5;
    }else if (self.indexOfTravels==1){
        data.travelIndex=1;
        
    }else if (self.indexOfTravels==2){
        data.travelIndex=2;
        
    }else{
        
    }
    return [[data getTitleOfTravel]count];
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 250;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    secondRightTableCell *cell=[[secondRightTableCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"detailsCell"];
    NSString *traveller=@"旅客:";
    traveller=[traveller stringByAppendingString:[[data getTravellers]objectAtIndex:0]];
    
    if (self.indexOfTravels==0) {
        cell.titleLabel.text=[[data getTitleOfTravel]objectAtIndex:0];
        
    }else if (self.indexOfTravels==1){
        cell.titleLabel.text=[[data getTitleOfTravel]objectAtIndex:indexPath.row];
        
        
    }else if (self.indexOfTravels==2){
        cell.titleLabel.text=[[data getTitleOfTravel]objectAtIndex:0];
        
    }else{
        cell.titleLabel.text=[[data getTitleOfTravel]objectAtIndex:indexPath.row];
        
    }
    cell.quantityLabel.text=[[data getQuantities]objectAtIndex:indexPath.row];
    cell.timeLabel.text=[[data gettravelTimes]objectAtIndex:0];
    cell.orderLabel.text=[[data getOrderNumbers]objectAtIndex:0];
    cell.timeLabel.text=[[data gettravelTimes]objectAtIndex:0];
    cell.contactLabel.text=[[data getContacts]objectAtIndex:0];
    cell.travellerLabel.text=traveller;
    cell.TravellerPhoneLabel.text=[[data getTravellerPhoneNumber]objectAtIndex:0];
    cell.contactPhoneLabel.text=[[data getContactPhoneNumber]objectAtIndex:0];
    [cell addCons];

    
    return cell;
}

-(void)reloadTableData
{
    [rightTable reloadData];
}
@end
