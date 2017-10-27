//
//  AppPortalManager.m
//  ZhiBoBa
//
//  Created by 林颖达 on 2017/10/26.
//  Copyright © 2017年 林颖达. All rights reserved.
//

#import "AppPortalManager.h"
#import "ZBTabBarViewController.h"
@implementation AppPortalManager
+(instancetype)sharedInstance{
    static AppPortalManager *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}
- (void)makeKeyWindow
{
    id<UIApplicationDelegate> delegate = [UIApplication sharedApplication].delegate;
    ZBTabBarViewController *tabbar = [[ZBTabBarViewController alloc]init];
    delegate.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    delegate.window.rootViewController = tabbar;
    [delegate.window makeKeyAndVisible];
}



@end
