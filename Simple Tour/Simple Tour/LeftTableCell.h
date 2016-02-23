//
//  LeftTableCell.h
//  Simple Tour
//
//  Created by 陈浩贤 on 16/1/20.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LeftTableCell : UITableViewCell
{
    UILabel *leftLabel;
}
@property(strong, nonatomic)UILabel *titleLabel;
@property(strong, nonatomic)UILabel *timeLabel;
@property(strong, nonatomic)UILabel *plateLabel;
@property(strong, nonatomic)UILabel *dateLabel;
@property(strong, nonatomic)UILabel *numberLabel;
-(void)addCons;
@end
