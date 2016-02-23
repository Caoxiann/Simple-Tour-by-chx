//
//  loginViewController.m
//  Simple Tour
//
//  Created by 陈浩贤 on 16/1/15.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import "loginViewController.h"
#import "AppDelegate.h"
@implementation loginViewController
-(void)viewDidLoad
{
    NSLog(@"login view did load!");
    loginButton=[[UIButton alloc]init];
    logoImage=[[UIImageView alloc]init];
    usernameInput=[[UITextField alloc]init];
    passwordInput=[[UITextField alloc]init];
    rememberUsername=[[UILabel alloc]init];
    tikButton=[[UIButton alloc]init];
    
    
    [self.view addSubview:loginButton];
    [self.view addSubview:logoImage];
    [self.view addSubview:usernameInput];
    [self.view addSubview:passwordInput];
    [self.view addSubview: rememberUsername];
    [self.view addSubview:tikButton];
    
    
    [self removeSubviewMaskConstrains];
    
    logoImage.backgroundColor=[UIColor greenColor];
    loginButton.backgroundColor=[UIColor redColor];
    
    
    [loginButton setTitle:@"登陆" forState:UIControlStateNormal];
    [loginButton setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    
    rememberUsername.text=@"记住用户名";
    rememberUsername.textAlignment=NSTextAlignmentCenter;
    
    usernameInput.borderStyle=UITextBorderStyleRoundedRect;
    passwordInput.borderStyle=UITextBorderStyleRoundedRect;
    usernameInput.placeholder=@"用户名/邮箱";
    passwordInput.placeholder=@"密码";
    usernameInput.clearButtonMode=UITextFieldViewModeWhileEditing;
    passwordInput.clearButtonMode=UITextFieldViewModeWhileEditing;
    passwordInput.secureTextEntry=YES;
    
    [loginButton addTarget:self action:@selector(sendUsernameAndPassword) forControlEvents:UIControlEventTouchUpInside];
    
    NSNotificationCenter *center=[NSNotificationCenter defaultCenter];
    [center addObserver:self selector:@selector(receieveNotice:) name:@"rightOrNot" object:nil];
    
    [self addConstrains];
    
}

-(void)removeSubviewMaskConstrains
{
    NSLog(@"remove Subview Mask Constrains!");
    for (int i=0;i<=[self.view.subviews count]-1 ; i++) {
        [self.view.subviews objectAtIndex:i].translatesAutoresizingMaskIntoConstraints=NO;
    }
}

-(void)addConstrains
{
    NSLog(@"add constrains!");
    NSDictionary *viewsDic=[[NSDictionary alloc]init];
    viewsDic=NSDictionaryOfVariableBindings(loginButton,logoImage,usernameInput,passwordInput,rememberUsername,tikButton);
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:loginButton attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-200-[loginButton]-200-|" options:0 metrics:nil views:viewsDic]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-200-[logoImage]-200-|" options:0 metrics:nil views:viewsDic]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-200-[usernameInput]-200-|" options:0 metrics:nil views:viewsDic]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-200-[passwordInput]-200-|" options:0 metrics:nil views:viewsDic]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-200-[rememberUsername]-200-|" options:0 metrics:nil views:viewsDic]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[loginButton(50)]" options:0 metrics:nil views:viewsDic]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[logoImage(usernameInput)]-[usernameInput(50)]-[passwordInput(usernameInput)]-[rememberUsername(usernameInput)]-[loginButton]" options:0 metrics:nil views:viewsDic]];
    
}

-(void)sendUsernameAndPassword
{
    [self loginUsername:[usernameInput text] andPassword:[passwordInput text]];
}

-(void)loginUsername:(NSString *)username andPassword:(NSString *)password
{
    usernamePassword *modalOfUser=[[usernamePassword alloc]init];
    [modalOfUser checkUsername:username withPassword:password];
}

-(void)receieveNotice:(NSNotification *)notification
{
    
    if ([[notification object]isEqualToString:@"Yes"])
    {
        NSLog(@"now can enter");
        NSNotificationCenter *center=[NSNotificationCenter defaultCenter];
        [center addObserver:self selector:@selector(enterTheMainVC:) name:@"username" object:nil];
        
    }
    else
    {
        NSLog(@"you can't enter");
    }
}

-(void)enterTheMainVC:(NSNotification *)notification
{
    mainViewController *mainVC=[[mainViewController alloc]init];
    [self dismissViewControllerAnimated:NO completion:nil];
    [self presentViewController:mainVC animated:YES completion:nil];
    mainVC.username=[notification object];
    
}

-(void)viewDidAppear:(BOOL)animated
{
    NSLog(@"disappeared!");
}
@end
