//
//  mainViewController.m
//  Simple Tour
//
//  Created by 陈浩贤 on 16/1/30.
//  Copyright © 2016年 陈浩贤. All rights reserved.
//

#import "mainViewController.h"

@implementation mainViewController
-(instancetype)init
{

    return self;
}

-(void)viewDidLoad
{
    self.view.backgroundColor=[UIColor whiteColor];
    tabbar=[[UITabBar alloc]init];
    tabbar.barTintColor=[UIColor redColor];
    tabbar.translatesAutoresizingMaskIntoConstraints=NO;
    tabbar.delegate=self;
    item1=[[UITabBarItem alloc]initWithTitle:@"旅客信息" image:nil selectedImage:nil];
    item2=[[UITabBarItem alloc]initWithTitle:@"购买详情" image:nil selectedImage:nil];
    item3=[[UITabBarItem alloc]initWithTitle:@"当日订单" image:nil selectedImage:nil];
    NSArray *itemsArray=[[NSArray alloc]initWithObjects:item1,item2,item3, nil];
    
    [tabbar setItems:itemsArray];
    tabbar.selectedItem=[tabbar.items objectAtIndex:0];
    for (int i=0; i<=2; i++) {
        UITabBarItem *item=[tabbar.items objectAtIndex:i];
        item.titlePositionAdjustment=UIOffsetMake(10, -10);
        [item setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName,[UIFont fontWithName:@"Apple SD Gothic Neo" size:15],NSFontAttributeName, nil] forState:UIControlStateNormal];
        [item setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor colorWithRed:245/255.0 green:166/255.0 blue:35/255.0 alpha:1],NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
    }
    travellerInfo=[[travellerInfoVC alloc]init];
    purchasingDetail=[[purchasingDetailsVC alloc]init];
    dayOrder=[[DayOrderVC alloc]init];
    
    [self addChildViewController:travellerInfo];
    [self addChildViewController:purchasingDetail];
    [self addChildViewController:dayOrder];
    
    [self.view addSubview:travellerInfo.view];
    
    [self.view addSubview:tabbar];
    
    [self addCons];
    [self addConstrainsForChildviewcontroller:travellerInfo];
    
}

-(void)addCons
{
    NSDictionary *viewsDic=[[NSDictionary alloc]init];
    viewsDic=NSDictionaryOfVariableBindings(tabbar);
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[tabbar]|" options:0 metrics:nil views:viewsDic]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[tabbar(50)]" options:0 metrics:nil views:viewsDic]];
    
}

-(void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    NSString *title=item.title;

    if ([title isEqualToString:item1.title]) {
        newViewController=travellerInfo;
    }else if ([title isEqualToString:item2.title])
    {
        newViewController=purchasingDetail;
    }else if ([title isEqualToString:item3.title])
    {
        newViewController=dayOrder;
    }
    
    [currentViewController willMoveToParentViewController:nil];
    [currentViewController.view removeFromSuperview];
    [currentViewController removeFromParentViewController];
    
    [self addChildViewController:newViewController];
    [self.view addSubview:newViewController.view];
    [newViewController didMoveToParentViewController:self];
    [self addConstrainsForChildviewcontroller:newViewController];
    
    
}

-(void)addConstrainsForChildviewcontroller:(UIViewController *)childViewController
{
    UIView *childView=childViewController.view;
    childView.translatesAutoresizingMaskIntoConstraints=NO;
    NSDictionary *viewsDic=[[NSDictionary alloc]init];
    viewsDic=NSDictionaryOfVariableBindings(tabbar,childView);
    NSLog(@"superview:%@",childView.superview);
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[tabbar]|" options:0 metrics:nil views:viewsDic]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[tabbar][childView]|" options:0 metrics:nil views:viewsDic]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[childView]|" options:0 metrics:nil views:viewsDic]];
}

@end
