//
//  ZBTabBarViewController.m
//  ZhiBoBa
//
//  Created by 林颖达 on 2017/10/26.
//  Copyright © 2017年 林颖达. All rights reserved.
//

#import "ZBTabBarViewController.h"
#import "ZBNavigationController.h"
#import "UINavigationController+FDFullscreenPopGesture.h"
#import "NSTool.h"
#import "UIImage+Color.h"
#import "CommonDefines.h"
#import "ZBNavigationController.h"
@interface ZBTabBarViewController ()

@end

@implementation ZBTabBarViewController
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.fd_prefersNavigationBarHidden = YES;
        NSData *tabbarConfigData = [NSData dataWithContentsOfFile:[NSTool bundlePath:@"TabbarConfig.json"]] ;
        NSDictionary *tabbarConfigDic = [NSJSONSerialization JSONObjectWithData:tabbarConfigData options:NSJSONReadingAllowFragments error:nil];
        
        //Tab Bar 样式
        UITabBar *tabBar = self.tabBar;
        [tabBar setShadowImage:[UIImage createShadowImage:[UIColor blueColor]]];
        [tabBar setBackgroundImage:[UIImage createBackgroundImage:[UIColor redColor] height:kTabbarHeight]];
        NSArray *tabbarConfigArr = tabbarConfigDic[@"controllers"];
        for (NSDictionary *dic in tabbarConfigArr) {
            
            
        }
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
