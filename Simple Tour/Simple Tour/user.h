//
//  user.h
//  Simple Tour
//
//  Created by 陈浩贤 on 16/1/15.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface user : NSObject
{
    
    
}
@property(strong, nonatomic)NSString *username;
@property(strong, nonatomic)NSString *password;

-(instancetype)init;
@end
