//
//  loginViewController.h
//  Simple Tour
//
//  Created by 陈浩贤 on 16/1/15.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "usernamePassword.h"
#import "mainViewController.h"
@interface loginViewController : UIViewController
<UINavigationControllerDelegate>
{
    UIButton *loginButton;
    UIImageView *logoImage;
    UITextField *usernameInput;
    UITextField *passwordInput;
    UILabel *rememberUsername;
    UIButton *tikButton;
}



-(void)removeSubviewMaskConstrains;
-(void)addConstrains;
-(void)sendUsernameAndPassword;
-(void)loginUsername:(NSString *)username andPassword:(NSString *)password;
-(void)receieveNotice:(NSNotification *)notification;
-(void)enterTheMainVC:(NSNotification *)notification;
@end
