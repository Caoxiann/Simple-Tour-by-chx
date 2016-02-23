//
//  firstRightTable.h
//  Simple Tour
//
//  Created by 陈浩贤 on 16/1/22.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "firstRightTableCell.h"
@interface firstRightTable : UIViewController
<UITableViewDataSource,UITableViewDelegate>

@property(strong, nonatomic)NSMutableArray *travellers;
@property(strong, nonatomic)NSMutableArray *seatNumbers;
@property(strong, nonatomic)NSMutableArray *plateNumbers;
@property(strong, nonatomic)NSMutableArray *companys;
@property(strong, nonatomic)NSMutableArray *places;
@property(strong, nonatomic)NSMutableArray *travelTimes;
@property(strong, nonatomic)NSMutableArray *carNumbers;
@end
