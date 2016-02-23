//
//  TableData.m
//  Simple Tour
//
//  Created by 陈浩贤 on 16/1/18.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import "TableData.h"

@implementation TableData

-(instancetype)initWithTravellerInfoOfLeftTable
{

    travels=[[NSMutableArray alloc]initWithObjects:@"成都      青城山",@"青城山     都江堰",@"都江堰     青城山",@"青城山     成都", nil];
    startAndArrivalTimes=[[NSMutableArray alloc]initWithObjects:@"7:00        8:00", nil];
    date=[[NSMutableArray alloc]initWithObjects:@"16",@"29",@"10",@"30", nil];
    numbers=[[NSMutableArray alloc]initWithObjects:@"A000001", nil];
    return self;
}

-(NSMutableArray *)getPlateNumbers
{
   plateNumbers=[[NSMutableArray alloc]initWithObjects:@"川A12306",@"川A95533",nil];
    return plateNumbers;
}

-(NSMutableArray *)getTravels;
{
    return travels;
}

-(NSMutableArray *)getStartAndArrivalTimes
{
    return startAndArrivalTimes;
}

-(NSMutableArray *)getPurchasingDetailsOfLeftTable
{
    purchasingDetails=[[NSMutableArray alloc]initWithObjects:@"门票",@"酒店", nil];
    return purchasingDetails;
}

-(NSMutableArray *)getDailyOrdersOfLeftTable
{
    dailyOrder=[[NSMutableArray alloc]initWithObjects:@"行程",@"酒店",@"门票", nil];
    return dailyOrder;
}

-(NSMutableArray *)getDate
{
    return date;
}

-(NSMutableArray *)getNumbers
{
    return numbers;
}

-(NSMutableArray *)getCarNumbers
{
    carNumbers=[[NSMutableArray alloc]initWithObjects:@"6号车", nil];
    return carNumbers;
}

-(NSMutableArray *)getSeatNumbers
{
    seatNumbers=[[NSMutableArray alloc]initWithObjects:@"4A", nil];
    return  seatNumbers;
}


-(NSMutableArray *)getCompanies
{
    companies=[[NSMutableArray alloc]initWithObjects:@"九旅", nil];
    return companies;
}

-(NSMutableArray *)getTravellers
{
    travellers=[[NSMutableArray alloc]initWithObjects:@"隔壁老王", nil];
    return travellers;
}

-(NSMutableArray *)gettravelTimes
{
    travelTimes=[[NSMutableArray alloc]initWithObjects:@"2016-10-1 8:00", nil];
    return travelTimes;
}

-(NSMutableArray *)getPlaces
{
    places=[[NSMutableArray alloc]initWithObjects:@"成电南门对面芒果酒店门口", nil];
    return places;
}

-(NSMutableArray *)getTitleOfTravel
{
    NSMutableArray *titles=[[NSMutableArray alloc]initWithObjects:@"2016年2月14日 成都火把节一日游",@"2015年11月11日 成都光棍节party门票",@"2015年12月25日 南门芒果酒店一晚",@"2015年12月25日 西门草莓酒店一晚", nil];
    
    return titles;
}

-(NSMutableArray *)getQuantities
{
    NSMutableArray *quantities=[[NSMutableArray alloc]initWithObjects:@"4",@"2",@"10",@"9", nil];
    return quantities;
}

-(NSMutableArray *)getOrderNumbers
{
    orderNumbers=[[NSMutableArray alloc]initWithObjects:@"10086", nil];
    return orderNumbers;
}

-(NSMutableArray *)getContacts
{
    NSMutableArray *contacts=[[NSMutableArray alloc]initWithObjects:@"联系人:老司机", nil];
    return contacts;
}

-(NSMutableArray *)getTravellerPhoneNumber
{
    NSMutableArray *travellerPhoneNumber=[[NSMutableArray alloc]initWithObjects:@"电话:18666666666", nil];
    return travellerPhoneNumber;
}

-(NSMutableArray *)getContactPhoneNumber
{
    NSMutableArray *contactPhoneNumber=[[NSMutableArray alloc]initWithObjects:@"电话:67676767676", nil];
    return contactPhoneNumber;
}
@end
