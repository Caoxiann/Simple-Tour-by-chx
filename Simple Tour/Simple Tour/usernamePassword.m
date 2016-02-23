//
//  usernamePassword.m
//  Simple Tour
//
//  Created by 陈浩贤 on 16/1/15.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import "usernamePassword.h"

@implementation usernamePassword
-(instancetype)init
{
    users=[[NSMutableArray alloc]init];

    [self getUsers];
    
    return self;
}

-(void)getUsers
{
    u001=[[user alloc]init];
    u001.username=@"chx";
    u001.password=@"123456";
    [users addObject:u001];
    
    u002=[[user alloc]init];
    u002.username=@"laowang";
    u002.password=@"567890";
    
    [users addObject:u002];
}

-(void)checkUsername:(NSString *)theUsername withPassword:(NSString *)thePassword
{
   
    NSLog(@"the username:%@",theUsername);
    for (int i=0; i<=[users count]-1; i++) {
        user *theUser=[users objectAtIndex:i];
        if ([theUsername isEqualToString:theUser.username]) {
            if ([thePassword isEqualToString:theUser.password]) {
                NSLog(@"right");
                [[NSNotificationCenter defaultCenter]postNotificationName:@"rightOrNot" object:@"Yes"];
                
                [[NSNotificationCenter defaultCenter]postNotificationName:@"username" object:theUsername];
                
                break;
            }else
            {
                NSLog(@"password worng");
                break;
            }
        }
    }
    
}

@end
