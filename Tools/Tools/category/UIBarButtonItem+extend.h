//
//  UIBarButtonItem+extend.h
//  Tools
//
//  Created by 李勇 on 2017/6/12.
//  Copyright © 2017年 李勇. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (extend)

/**
 创建BarButtonItem

 @param barButtonImage image
 @param target targer
 @param selctor selctor
 @return barButtonItem
 */
+(UIBarButtonItem *)barButtonItemWithImage:(NSString *)barButtonImage target:(id)target selector:(SEL)selctor;
//
/**
  创建BarButtonItem

 @param title 文字
 @param color 字体颜色
 @param font 字体大小
 @param target target
 @param selctor selctor
 @return barbuttonItem
 */
+(UIBarButtonItem *)barButtonItemWithTitle:(NSString*)title titleColor:(UIColor*)color titleFont:(UIFont *)font target:(id)target selector:(SEL)selctor;
@end
