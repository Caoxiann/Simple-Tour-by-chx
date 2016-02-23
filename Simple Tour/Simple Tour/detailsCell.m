//
//  detailsCell.m
//  Simple Tour
//
//  Created by 陈浩贤 on 16/1/20.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import "detailsCell.h"

@implementation detailsCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        self.titleLabel=[[UILabel alloc]init];
        self.leftImageView=[[UIImageView alloc]init];
        self.leftImageView.backgroundColor=[UIColor redColor];
        self.leftImageView.image=[UIImage imageNamed:@"IMG_2158.JPG"];
        [self.contentView addSubview:self.titleLabel];
        [self.contentView addSubview:self.leftImageView];
        
    }
    
    return self;
}

-(void)addCons
{
    UILabel *title=self.titleLabel;
    UIImageView *leftimage=self.leftImageView;
    
    self.titleLabel.translatesAutoresizingMaskIntoConstraints=NO;
    self.leftImageView.translatesAutoresizingMaskIntoConstraints=NO;
    
    NSDictionary *viewsDic=[[NSDictionary alloc]init];
    viewsDic=NSDictionaryOfVariableBindings(title,leftimage);
    
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-30-[leftimage(30)]-[title(150)]" options:0 metrics:nil views:viewsDic]];
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[leftimage(30)]" options:0 metrics:nil views:viewsDic]];
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[title(30)]" options:0 metrics:nil views:viewsDic]];
    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:leftimage attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:title attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
}
@end
