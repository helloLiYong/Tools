//
//  UIBarButtonItem+extend.m
//  Tools
//
//  Created by 李勇 on 2017/6/12.
//  Copyright © 2017年 李勇. All rights reserved.
//

#import "UIBarButtonItem+extend.h"

@implementation UIBarButtonItem (extend)
+(UIBarButtonItem *)barButtonItemWithImage:(NSString *)barButtonImage target:(id)target selector:(SEL)selctor{
    UIButton *btn = [[UIButton alloc]init];
    [btn  addTarget:target action:selctor forControlEvents:UIControlEventTouchUpInside];
    [btn setContentMode:UIViewContentModeCenter];
    
    UIImage *btnImage = [UIImage imageNamed:barButtonImage];
    btn.frame = CGRectMake(0, 0, btnImage.size.width, btnImage.size.height);
    [btn setImage:btnImage forState:UIControlStateNormal];
    btn.imageView.contentMode = UIViewContentModeCenter;
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc]initWithCustomView:btn];
    return buttonItem;
}
+(UIBarButtonItem *)barButtonItemWithTitle:(NSString *)title titleColor:(UIColor *)color titleFont:(UIFont *)font target:(id)target selector:(SEL)selctor {
    UIButton *btn = [[UIButton alloc]init];
    [btn addTarget:target action:selctor forControlEvents:UIControlEventTouchUpInside];
    [btn setContentMode:UIViewContentModeCenter];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:color forState:UIControlStateNormal];
    btn.titleLabel.font = font;
    btn.frame = CGRectMake(0, 0, [title sizeWithAttributes:@{NSFontAttributeName:font}].width, [title sizeWithAttributes:@{NSFontAttributeName:font}].height);
    UIBarButtonItem *btnItem = [[UIBarButtonItem alloc]initWithCustomView:btn];
    return btnItem;
}

@end
