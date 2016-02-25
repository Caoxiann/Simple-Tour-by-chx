//
//  firstRightTableCell.m
//  Simple Tour
//
//  Created by 陈浩贤 on 16/1/21.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import "firstRightTableCell.h"

@implementation firstRightTableCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.travellerLabel=[[UILabel alloc]init];
        self.seatNumberLabel=[[UILabel alloc]init];
        self.plateNumberLabel=[[UILabel alloc]init];
        self.companyLabel=[[UILabel alloc]init];
        self.placeLabel=[[UILabel alloc]init];
        self.travelTimeLabel=[[UILabel alloc]init];
        self.carNumberLabel=[[UILabel alloc]init];
        signButton=[UIButton buttonWithType:UIButtonTypeSystem];
        [signButton setTitle:@"手动签到" forState:UIControlStateNormal];
        
        
        [self.contentView addSubview:self.travellerLabel];
        [self.contentView addSubview:self.seatNumberLabel];
        [self.contentView addSubview:self.plateNumberLabel];
        [self.contentView addSubview:self.companyLabel];
        [self.contentView addSubview:self.placeLabel];
        [self.contentView addSubview:self.travelTimeLabel];
        [self.contentView addSubview:self.carNumberLabel];
        [self.contentView addSubview:signButton];
        
        for (int i=0; i<=[self.contentView.subviews count]-1; i++) {
            UIView *subviews=[self.contentView.subviews objectAtIndex:i];
            subviews.translatesAutoresizingMaskIntoConstraints=NO;
        }

        
    }
    return self;
}

-(void)addCons
{
    UILabel *traveller=self.travellerLabel;
    UILabel *seat=self.seatNumberLabel;
    UILabel *plate=self.plateNumberLabel;
    UILabel *company=self.companyLabel;
    UILabel *place=self.placeLabel;
    UILabel *time=self.travelTimeLabel;
    UILabel *car=self.carNumberLabel;
    
    NSDictionary *viewsDic=[[NSDictionary alloc]init];
    viewsDic=NSDictionaryOfVariableBindings(traveller,seat,plate,company,place,time,car,signButton);
    
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-30-[traveller(100)]-30-[car(50)]-[plate(100)]-[seat(50)]" options:NSLayoutFormatAlignAllTop metrics:nil views:viewsDic]];
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-30-[company]-[place]-[time(150)]" options:NSLayoutFormatAlignAllTop metrics:nil views:viewsDic]];
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-30-[traveller(30)]-10-[company(20)]" options:NSLayoutFormatAlignAllLeft metrics:nil views:viewsDic]];
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-30-[car(20)]-20-[place(30)]" options:NSLayoutFormatAlignAllLeft metrics:nil views:viewsDic]];
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[time(30)]" options:0 metrics:nil views:viewsDic]];
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[signButton(100)]-100-|" options:0 metrics:nil views:viewsDic]];
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-15-[signButton(50)]" options:0 metrics:nil views:viewsDic]];
   
}
@end
