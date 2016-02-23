//
//  detailsCell.h
//  Simple Tour
//
//  Created by 陈浩贤 on 16/1/20.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface detailsCell : UITableViewCell


@property(strong, nonatomic)UILabel *titleLabel;
@property(strong, nonatomic)UIImageView *leftImageView;

-(void)addCons;
@end
