//
//  UIImage+Extend.h
//  Tools
//
//  Created by 李勇 on 2017/6/12.
//  Copyright © 2017年 李勇. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extend)

/**
 根据一张image返回一张圆形的图片

 @return image
 */
-(UIImage *)circelImage;

/**
 修改图片的方向

 @param aImage 修改的图片
 @return 返回的图片
 */
+ (UIImage *)fixOrientation:(UIImage *)aImage;
@end
