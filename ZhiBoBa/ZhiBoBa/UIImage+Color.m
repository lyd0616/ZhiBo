//
//  UIImage+Color.m
//  ZhiBoBa
//
//  Created by 林颖达 on 2017/10/26.
//  Copyright © 2017年 林颖达. All rights reserved.
//

#import "UIImage+Color.h"

@implementation UIImage (Color)

/**
 *  @brief  创建边框图片
 *
 *  @param color    边框颜色
 *
 *  @return 返回Image
 */
+ (UIImage *)createShadowImage:(UIColor*)color
{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.f, 0.5f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

/**
 *  @brief  创建背景图片
 *
 *  @param color    背景颜色
 *  @param height   背景高度
 *
 *  @return 返回Image
 */
+ (UIImage *)createBackgroundImage:(UIColor*)color height:(CGFloat)height
{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.f, height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}
@end
