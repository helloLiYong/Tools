//
//  NSDate+extend.h
//  Tools
//
//  Created by 李勇 on 2017/6/12.
//  Copyright © 2017年 李勇. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (extend)

/**
 根据date得到具体的信息，

 @param date date
 @return 返回字典
 */
+(NSDictionary *)getDateInfoFromDate:(NSDate *)date;
@end
