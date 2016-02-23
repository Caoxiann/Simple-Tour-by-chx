 //
//  usernamePassword.h
//  Simple Tour
//
//  Created by 陈浩贤 on 16/1/15.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "user.h"
@interface usernamePassword : NSObject
{
    NSMutableArray *users;
    user *u001;
    user *u002;
}

-(instancetype)init;
-(void)getUsers;
-(void)checkUsername:(NSString *)theUsername withPassword:(NSString *)thePassword;
@end
