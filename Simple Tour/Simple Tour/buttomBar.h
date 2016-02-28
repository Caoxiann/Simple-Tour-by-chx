//
//  buttomBar.h
//  Simple Tour
//
//  Created by 陈浩贤 on 16/2/26.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface buttomBar : UIView
{
    UIButton *leftButton;
    UIButton *rightButton;
    UIButton *renewButton;
    UILabel *dateLabel;
    UILabel *timeLabel;
    
}

-(void)viewLoaded;
-(void)addConstraintsForSubviews;
@end
