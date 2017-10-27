//
//  AppPortalManager.h
//  ZhiBoBa
//
//  Created by 林颖达 on 2017/10/26.
//  Copyright © 2017年 林颖达. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppPortalManager : NSObject
+ (instancetype)sharedInstance;

/**
 创建keyWindow
 */
- (void)makeKeyWindow;

@end
