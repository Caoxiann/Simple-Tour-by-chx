//
//  DayOrderVC.h
//  Simple Tour
//
//  Created by 陈浩贤 on 16/1/15.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableData.h"
#import "detailsCell.h"
#import "secondRightTable.h"
@interface DayOrderVC : UIViewController
<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *leftTable;
    NSMutableArray *dailyOrder;
    secondRightTable *table;
}

-(void)addConstrains;
@end
