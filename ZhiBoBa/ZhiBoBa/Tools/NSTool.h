//
//  NSTool.h
//  ZhiBoBa
//
//  Created by 林颖达 on 2017/10/26.
//  Copyright © 2017年 林颖达. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTool : NSObject

/**
 获取mainBundel资源文件

 @param filename <#filename description#>
 @return <#return value description#>
 */
+ (NSString *)bundlePath:(NSString *)filename;
@end
