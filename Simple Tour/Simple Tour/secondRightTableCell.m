//
//  secondRightTableCell.m
//  Simple Tour
//
//  Created by 陈浩贤 on 16/1/23.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import "secondRightTableCell.h"

@implementation secondRightTableCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.titleLabel=[[UILabel alloc]init];
        self.quantityLabel=[[UILabel alloc]init];
        self.orderLabel=[[UILabel alloc]init];
        self.timeLabel=[[UILabel alloc]init];
        self.contactLabel=[[UILabel alloc]init];
        self.travellerLabel=[[UILabel alloc]init];
        self.TravellerPhoneLabel=[[UILabel alloc]init];
        self.contactPhoneLabel=[[UILabel alloc]init];
        
        sperateLine=[[UIView alloc]init];
        sperateLine.backgroundColor=[UIColor grayColor];
        
        [self.contentView addSubview:self.titleLabel];
        [self.contentView addSubview:self.quantityLabel];
        [self.contentView addSubview:self.orderLabel];
        [self.contentView addSubview:self.timeLabel];
        [self.contentView addSubview:self.contactLabel];
        [self.contentView addSubview:self.travellerLabel];
        [self.contentView addSubview:self.TravellerPhoneLabel];
        [self.contentView addSubview:self.contactPhoneLabel];
        [self.contentView addSubview:sperateLine];
        
        for (int i=0; i<=[self.contentView.subviews count]-1; i++) {
            UIView *subviews=[self.contentView.subviews objectAtIndex:i];
            subviews.translatesAutoresizingMaskIntoConstraints=NO;
        }
    }
    
    return self;
}

-(void)addCons
{
    NSDictionary *viewsDic=[[NSDictionary alloc]init];
    UILabel *title=self.titleLabel;
    UILabel *quantity=self.quantityLabel;
    UILabel *order=self.orderLabel;
    UILabel *time=self.timeLabel;
    UILabel *contact=self.contactLabel;
    UILabel *traveller=self.travellerLabel;
    UILabel *TPhone=self.TravellerPhoneLabel;
    UILabel *CPhone=self.contactPhoneLabel;
    
    viewsDic=NSDictionaryOfVariableBindings(title,quantity,order,time,contact,traveller,TPhone,CPhone,sperateLine);
    
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[title(300)]" options:0 metrics:nil views:viewsDic]];
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[quantity(40)]-|" options:0 metrics:nil views:viewsDic]];
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-30-[title(40)]-[time(30)]-42-[contact(30)]-[traveller(30)]" options:NSLayoutFormatAlignAllLeft metrics:nil views:viewsDic]];
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-30-[quantity(40)]-[order(30)]-42-[CPhone(30)]-[TPhone(30)]" options:NSLayoutFormatAlignAllRight metrics:nil views:viewsDic]];
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-30-[sperateLine]-30-|" options:0 metrics:nil views:viewsDic]];
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-130-[sperateLine(2)]" options:0 metrics:nil views:viewsDic]];
    
    
}

@end
