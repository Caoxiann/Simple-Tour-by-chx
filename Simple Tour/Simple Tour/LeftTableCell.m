//
//  LeftTableCell.m
//  Simple Tour
//
//  Created by 陈浩贤 on 16/1/20.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import "LeftTableCell.h"

@implementation LeftTableCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.titleLabel=[[UILabel alloc]init];
        self.timeLabel=[[UILabel alloc]init];
        self.plateLabel=[[UILabel alloc]init];
        self.dateLabel=[[UILabel alloc]init];
        self.numberLabel=[[UILabel alloc]init];
        
        [self.contentView addSubview:self.titleLabel];
        [self.contentView addSubview:self.timeLabel];
        [self.contentView addSubview:self.plateLabel];
        [self.contentView addSubview:self.dateLabel];
        [self.contentView addSubview:self.numberLabel];

    }

    
    return self;
}

-(void)addCons
{
    UILabel *title=self.titleLabel;
    UILabel *time=self.timeLabel;
    UILabel *plate=self.plateLabel;
    UILabel *date=self.dateLabel;
    UILabel *number=self.numberLabel;

    NSDictionary *viewsDic=[[NSDictionary alloc]init];
    viewsDic=NSDictionaryOfVariableBindings(title,time,plate,date,number);
    
    self.titleLabel.translatesAutoresizingMaskIntoConstraints=NO;
    self.timeLabel.translatesAutoresizingMaskIntoConstraints=NO;
    self.plateLabel.translatesAutoresizingMaskIntoConstraints=NO;
    self.dateLabel.translatesAutoresizingMaskIntoConstraints=NO;
    self.numberLabel.translatesAutoresizingMaskIntoConstraints=NO;
    
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-10-[title]-10-|" options:0 metrics:nil views:viewsDic]];
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-10-[title(50)]" options:0 metrics:nil views:viewsDic]];
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[title]-[time(20)]-[plate(20)]-[number(20)]" options:NSLayoutFormatAlignAllLeft metrics:nil views:viewsDic]];
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[date(25)]-40-|" options:0 metrics:nil views:viewsDic]];
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[date(25)]" options:0 metrics:nil views:viewsDic]];
}
@end
