//
//  UIImage+Color.h
//  ZhiBoBa
//
//  Created by 林颖达 on 2017/10/26.
//  Copyright © 2017年 林颖达. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Color)
/**
 *  @brief  创建背景图片
 *
 *  @param color    背景颜色
 *  @param height   背景高度
 *
 *  @return 返回Image
 */
+ (UIImage *)createBackgroundImage:(UIColor*)color height:(CGFloat)height;

/**
 *  @brief  创建边框图片
 *
 *  @param color    边框颜色
 *
 *  @return 返回Image
 */
+ (UIImage *)createShadowImage:(UIColor*)color;

@end
