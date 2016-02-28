//
//  buttomBar.m
//  Simple Tour
//
//  Created by 陈浩贤 on 16/2/26.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import "buttomBar.h"

@implementation buttomBar
-(instancetype)init
{
    leftButton=[UIButton buttonWithType:UIButtonTypeCustom];
    rightButton=[UIButton buttonWithType:UIButtonTypeCustom];
    dateLabel=[[UILabel alloc]init];
    timeLabel=[[UILabel alloc]init];
    renewButton=[UIButton buttonWithType:UIButtonTypeSystem];
    
    [renewButton setTitle:@"更新" forState:UIControlStateNormal];
    
    

    
    
    return self;
}



-(void)didMoveToSuperview
{
    [self addSubview:leftButton];
    [self addSubview:rightButton];
    [self addSubview:dateLabel];
    [self addSubview:timeLabel];
    [self addSubview:renewButton];

}
-(void)addConstraintsForSubviews
{
    NSDictionary *viewsDic=[[NSDictionary alloc]init];
    viewsDic=NSDictionaryOfVariableBindings(leftButton,rightButton,dateLabel,timeLabel,renewButton);
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[leftButton(50)]-100-[dateLabel(200)]-70-[timelabel(200)]-60-[renewButton(100)]" options:NSLayoutFormatAlignAllTop metrics:nil views:viewsDic]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[rightButton(50)]-|" options:0 metrics:nil views:viewsDic]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[leftButton(50)|" options:NSLayoutFormatAlignAllCenterY metrics:nil views:viewsDic]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[rightButton(50)|" options:NSLayoutFormatAlignAllCenterY metrics:nil views:viewsDic]];
    
    
}
@end
