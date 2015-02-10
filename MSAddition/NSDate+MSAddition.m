//
//  NSDate+MSAddition.m
//  MSAddition
//
//  Created by Marcin Stepnowski on 10/02/15.
//  Copyright (c) 2015 siema. All rights reserved.
//

#import "NSDate+MSAddition.h"

@implementation NSDate (MSAddition)

+(NSDate*)ms_dateWithYear:(unsigned int)year month:(unsigned int)month day:(unsigned int)day
                  hour:(unsigned int)hour minute:(unsigned int)minute second:(unsigned int)second{
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

+(NSDate*)ms_dateWithYear:(unsigned int)year month:(unsigned int)month day:(unsigned int)day
                  hour:(unsigned int)hour minute:(unsigned int)minute{
    return [self ms_dateWithYear:year month:month day:day hour:hour minute:minute second:0];
}

+(NSDate*)ms_dateWithYear:(unsigned int)year month:(unsigned int)month day:(unsigned int)day hour:(unsigned int)hour{
    return [self ms_dateWithYear:year month:month day:day hour:hour minute:0];
}

+(NSDate*)ms_dateWithYear:(unsigned int)year month:(unsigned int)month day:(unsigned int)day{
    return [self ms_dateWithYear:year month:month day:day hour:0];
}

-(unsigned)ms_day{
    NSDateComponents *components = [[NSCalendar currentCalendar]
                                    components:NSDayCalendarUnit fromDate:self];
    return (unsigned)[components day];
}

-(unsigned)ms_month{
    NSDateComponents *components = [[NSCalendar currentCalendar]
                                    components: NSMonthCalendarUnit  fromDate:self];
    return (unsigned)[components month];
}

-(unsigned)ms_year{
    NSDateComponents *components = [[NSCalendar currentCalendar]
                                    components: NSYearCalendarUnit fromDate:self];
    return (unsigned)[components year];;
}

-(unsigned)ms_hour{
    NSDateComponents *components = [[NSCalendar currentCalendar]
                                    components: NSHourCalendarUnit fromDate:self];
    return (unsigned)[components hour];
}

-(unsigned)ms_minute{
    NSDateComponents *components = [[NSCalendar currentCalendar]
                                    components: NSMinuteCalendarUnit fromDate:self];
    return (unsigned)[components minute];
}

-(unsigned)ms_second{
    NSDateComponents *components = [[NSCalendar currentCalendar]
                                    components: NSSecondCalendarUnit fromDate:self];
    return (unsigned)[components second];
}

-(unsigned)ms_weekday{
    NSDateComponents *components = [[NSCalendar currentCalendar]
                                    components: NSWeekdayCalendarUnit fromDate:self];
    return (unsigned)[components weekday];
}

-(bool)ms_isEqualDay:(NSDate *)date{
    return ([self ms_year] == [date ms_year] &&
            [self ms_month] == [date ms_month] &&
            [self ms_day] == [date ms_day]);
}

-(bool)ms_isEarlierThan:(NSDate *)date{
    return [self compare:date] == NSOrderedAscending;
}

-(bool)ms_isOlderThan:(NSDate *)date{
    return [self compare:date] == NSOrderedDescending;
}

@end
