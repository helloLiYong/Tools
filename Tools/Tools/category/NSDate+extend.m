//
//  NSDate+extend.m
//  Tools
//
//  Created by 李勇 on 2017/6/12.
//  Copyright © 2017年 李勇. All rights reserved.
//

#import "NSDate+extend.h"

@implementation NSDate (extend)
+(NSDictionary *)getDateInfoFromDate:(NSDate *)date{
    NSCalendar* calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian] ;
    NSInteger unitFlags = NSCalendarUnitYear |
    NSCalendarUnitMonth |
    NSCalendarUnitDay |
    NSCalendarUnitWeekday |
    NSCalendarUnitHour |
    NSCalendarUnitMinute |
    NSCalendarUnitSecond;
    NSDateComponents* components = [calendar components:unitFlags fromDate:date];
    
    NSUInteger weekday = [components weekday];
    NSString* weekDay=nil;
    switch (weekday) {
            
        case 1:
            weekDay = @"星期日";
            break;
        case 2:
            weekDay = @"星期一";
            break;
        case 3:
            weekDay = @"星期二";
            break;
        case 4:
            weekDay = @"星期三";
            break;
        case 5:
            weekDay = @"星期四";
            break;
        case 6:
            weekDay = @"星期五";
            break;
        case 7:
            weekDay = @"星期六";
            break;
            
        default:
            break;
    }
    NSUInteger day = [components day];
    NSUInteger month = [components month];
    NSNumber *monthNumber = [NSNumber numberWithUnsignedInteger:month];
    NSNumber *dayNumber = [NSNumber numberWithUnsignedInteger:day];

    return @{@"month":monthNumber,@"weekday":weekDay,@"day":dayNumber};
    
}

@end
