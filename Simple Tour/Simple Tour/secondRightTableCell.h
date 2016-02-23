//
//  secondRightTableCell.h
//  Simple Tour
//
//  Created by 陈浩贤 on 16/1/23.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface secondRightTableCell : UITableViewCell

{
    UIView *sperateLine;
}

@property(strong, nonatomic)UILabel *titleLabel;
@property(strong, nonatomic)UILabel *quantityLabel;
@property(strong, nonatomic)UILabel *orderLabel;
@property(strong, nonatomic)UILabel *timeLabel;
@property(strong, nonatomic)UILabel *contactLabel;
@property(strong, nonatomic)UILabel *travellerLabel;
@property(strong, nonatomic)UILabel *TravellerPhoneLabel;
@property(strong, nonatomic)UILabel *contactPhoneLabel;

-(void)addCons;
@end
