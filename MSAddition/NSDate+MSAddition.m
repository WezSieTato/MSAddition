//
//  NSDate+MSAddition.m
//  MSAddition
//
//  Created by Marcin Stepnowski on 10/02/15.
//  Copyright (c) 2015 siema. All rights reserved.
//

#import "NSDate+MSAddition.h"

@implementation NSDate (MSAddition)

+(NSDate*)ms_dateWithYear:(NSUInteger)year month:(NSUInteger)month day:(NSUInteger)day
                     hour:(NSUInteger)hour minute:(NSUInteger)minute second:(NSUInteger)second{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setDay:day];
    [components setMonth:month];
    [components setYear:year];
    [components setHour:hour];
    [components setMinute:minute];
    [components setSecond:second];
    
    return [calendar dateFromComponents:components];
}

+(NSDate*)ms_dateWithYear:(NSUInteger)year month:(NSUInteger)month day:(NSUInteger)day
                     hour:(NSUInteger)hour minute:(NSUInteger)minute{
    return [self ms_dateWithYear:year month:month day:day hour:hour minute:minute second:0];
}

+(NSDate*)ms_dateWithYear:(NSUInteger)year month:(NSUInteger)month day:(NSUInteger)day hour:(NSUInteger)hour{
    return [self ms_dateWithYear:year month:month day:day hour:hour minute:0];
}

+(NSDate*)ms_dateWithYear:(NSUInteger)year month:(NSUInteger)month day:(NSUInteger)day{
    return [self ms_dateWithYear:year month:month day:day hour:0];
}

-(NSUInteger)ms_day{
    NSDateComponents *components = [[NSCalendar currentCalendar]
                                    components:NSDayCalendarUnit fromDate:self];
    return (NSUInteger)[components day];
}

-(NSUInteger)ms_month{
    NSDateComponents *components = [[NSCalendar currentCalendar]
                                    components: NSMonthCalendarUnit  fromDate:self];
    return (NSUInteger)[components month];
}

-(NSUInteger)ms_year{
    NSDateComponents *components = [[NSCalendar currentCalendar]
                                    components: NSYearCalendarUnit fromDate:self];
    return (NSUInteger)[components year];
}

-(NSUInteger)ms_hour{
    NSDateComponents *components = [[NSCalendar currentCalendar]
                                    components: NSHourCalendarUnit fromDate:self];
    return (NSUInteger)[components hour];
}

-(NSUInteger)ms_minute{
    NSDateComponents *components = [[NSCalendar currentCalendar]
                                    components: NSMinuteCalendarUnit fromDate:self];
    return (NSUInteger)[components minute];
}

-(NSUInteger)ms_second{
    NSDateComponents *components = [[NSCalendar currentCalendar]
                                    components: NSSecondCalendarUnit fromDate:self];
    return (NSUInteger)[components second];
}

-(NSUInteger)ms_weekday{
    NSDateComponents *components = [[NSCalendar currentCalendar]
                                    components: NSWeekdayCalendarUnit fromDate:self];
    return (NSUInteger)[components weekday];
}

-(BOOL)ms_isEqualDay:(NSDate *)date{
    return ([self ms_year] == [date ms_year] &&
            [self ms_month] == [date ms_month] &&
            [self ms_day] == [date ms_day]);
}

-(BOOL)ms_isEarlierThan:(NSDate *)date{
    return [self compare:date] == NSOrderedAscending;
}

-(BOOL)ms_isOlderThan:(NSDate *)date{
    return [self compare:date] == NSOrderedDescending;
}

+(NSUInteger)ms_lastDayOfMonth:(NSUInteger)month {
    switch (month) {
        case 1: case 3: case 5: case 7: case 8: case 10: case 12:
            return 31;
            
        case 4: case 6: case 9: case 11:
            return 30;
            
        case 2:
            return 28;
            
        default:
            return 0;
    }
}

+(BOOL)ms_isYearLeap:(NSInteger)year{
    BOOL a = (year % 4 == 0);
    if(year % 100 == 0)
        a = (year % 400 == 0);
    
    return a;
}

@end
