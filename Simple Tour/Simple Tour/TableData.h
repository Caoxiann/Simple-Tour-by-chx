//
//  TableData.h
//  Simple Tour
//
//  Created by 陈浩贤 on 16/1/18.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TableData : NSObject


{
    NSMutableArray *travellers;
    NSMutableArray *carNumbers;
    NSMutableArray *plateNumbers;
    NSMutableArray *seatNumbers;
    NSMutableArray *orderNumbers;
    NSMutableArray *travels;
    NSMutableArray *startAndArrivalTimes;
    NSMutableArray *purchasingDetails;
    NSMutableArray *dailyOrder;
    NSMutableArray *date;
    NSMutableArray *numbers;
    NSMutableArray *companies;
    NSMutableArray *travelTimes;
    NSMutableArray *places;
    
}

@property(nonatomic)NSInteger travelIndex;

-(instancetype)initWithTravellerInfoOfLeftTable;

-(NSMutableArray *)getPurchasingDetailsOfLeftTable;
-(NSMutableArray *)getDailyOrdersOfLeftTable;
-(NSMutableArray *)getPlateNumbers;
-(NSMutableArray *)getTravels;
-(NSMutableArray *)getDate;
-(NSMutableArray *)getStartAndArrivalTimes;
-(NSMutableArray *)getNumbers;
-(NSMutableArray *)getCarNumbers;
-(NSMutableArray *)getSeatNumbers;

-(NSMutableArray *)getCompanies;
-(NSMutableArray *)getTravellers;
-(NSMutableArray *)gettravelTimes;
-(NSMutableArray *)getPlaces;

-(NSMutableArray *)getTitleOfTravel;
-(NSMutableArray *)getQuantities;
-(NSMutableArray *)getOrderNumbers;
-(NSMutableArray *)getContacts;
-(NSMutableArray *)getTravellerPhoneNumber;
-(NSMutableArray *)getContactPhoneNumber;

@end
