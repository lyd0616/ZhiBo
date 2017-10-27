//
//  NSTool.m
//  ZhiBoBa
//
//  Created by 林颖达 on 2017/10/26.
//  Copyright © 2017年 林颖达. All rights reserved.
//

#import "NSTool.h"

@implementation NSTool
+ (NSString *)bundlePath:(NSString *)filename
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:filename ofType:nil];
    return filePath;

}
@end
