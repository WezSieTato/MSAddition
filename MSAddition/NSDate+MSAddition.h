//
//  NSDate+MSAddition.h
//  MSAddition
//
//  Created by Marcin Stepnowski on 10/02/15.
//  Copyright (c) 2015 siema. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (MSAddition)

+(NSDate*)ms_dateWithYear:(NSUInteger)year month:(NSUInteger)month day:(NSUInteger)day
                     hour:(NSUInteger)hour minute:(NSUInteger)minute second:(NSUInteger)second;

+(NSDate*)ms_dateWithYear:(NSUInteger)year month:(NSUInteger)month day:(NSUInteger)day
                     hour:(NSUInteger)hour minute:(NSUInteger)minute;

+(NSDate*)ms_dateWithYear:(NSUInteger)year month:(NSUInteger)month day:(NSUInteger)day
                     hour:(NSUInteger)hour;

+(NSDate*)ms_dateWithYear:(NSUInteger)year month:(NSUInteger)month day:(NSUInteger)day;

-(NSUInteger)ms_day;
-(NSUInteger)ms_month;
-(NSUInteger)ms_year;
-(NSUInteger)ms_minute;
-(NSUInteger)ms_hour;
-(NSUInteger)ms_second;
-(NSUInteger)ms_weekday;

-(BOOL)ms_isEqualDay:(NSDate*)date;
-(BOOL)ms_isEarlierThan:(NSDate*)date;
-(BOOL)ms_isOlderThan:(NSDate*)date;

+(NSUInteger)ms_lastDayOfMonth:(NSUInteger)month;
+(BOOL)ms_isYearLeap:(NSInteger)year;

@end
