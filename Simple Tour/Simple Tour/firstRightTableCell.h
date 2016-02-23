//
//  firstRightTableCell.h
//  Simple Tour
//
//  Created by 陈浩贤 on 16/1/21.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface firstRightTableCell : UITableViewCell
{
    
    
    
    UIButton *signButton;
    
    
}

@property(strong, nonatomic)UILabel *travellerLabel;
@property(strong, nonatomic)UILabel *seatNumberLabel;
@property(strong, nonatomic)UILabel *plateNumberLabel;
@property(strong, nonatomic)UILabel *companyLabel;
@property(strong, nonatomic)UILabel *placeLabel;
@property(strong, nonatomic)UILabel *travelTimeLabel;
@property(strong, nonatomic)UILabel *carNumberLabel;

-(void)addCons;

@end
