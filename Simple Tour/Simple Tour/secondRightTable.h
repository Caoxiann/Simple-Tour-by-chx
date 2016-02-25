//
//  secondRightTable.h
//  Simple Tour
//
//  Created by 陈浩贤 on 16/1/23.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableData.h"
#import "secondRightTableCell.h"
@interface secondRightTable : UIViewController
<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *rightTable;
    TableData *data;
}

@property(nonatomic)NSInteger indexOfTravels;

-(void)reloadTableData;
@end
