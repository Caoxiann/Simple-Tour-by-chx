//
//  travellerInfoVC.h
//  Simple Tour
//
//  Created by 陈浩贤 on 16/1/15.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LeftTableCell.h"
#import "TableData.h"
#import "firstRightTable.h"
@interface travellerInfoVC : UIViewController
<UITableViewDataSource,UITableViewDelegate>

{
    UITableView *leftTable;

    firstRightTable *myTable;
    
    NSMutableArray *data;
    NSMutableArray *travels;
    NSMutableArray *plateNumbers;
    NSMutableArray *startAndArrivalTimes;
    NSMutableArray *date;
    NSMutableArray *numbers;
    
    NSMutableArray *travellers;
    NSMutableArray *seatNumbers;
    NSMutableArray *companys;
    NSMutableArray *places;
    NSMutableArray *travelTimes;
    NSMutableArray *carNumbers;
}


-(void)addContrains;
@end
