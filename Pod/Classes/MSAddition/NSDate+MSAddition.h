//
//  NSDate+MSAddition.h
//  MSAddition
//
//  Created by Marcin Stepnowski on 10/02/15.
//  Copyright (c) 2015 siema. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (MSAddition)

+(NSDate*)ms_dateWithYear:(unsigned)year month:(unsigned)month day:(unsigned)day
                  hour:(unsigned)hour minute:(unsigned)minute second:(unsigned)second;

+(NSDate*)ms_dateWithYear:(unsigned)year month:(unsigned)month day:(unsigned)day
                  hour:(unsigned)hour minute:(unsigned)minute;

+(NSDate*)ms_dateWithYear:(unsigned)year month:(unsigned)month day:(unsigned)day
                  hour:(unsigned)hour;

+(NSDate*)ms_dateWithYear:(unsigned)year month:(unsigned)month day:(unsigned)day;


-(unsigned)ms_day;
-(unsigned)ms_month;
-(unsigned)ms_year;
-(unsigned)ms_minute;
-(unsigned)ms_hour;
-(unsigned)ms_second;
-(unsigned)ms_weekday;

-(BOOL)ms_isEqualDay:(NSDate*)date;
-(BOOL)ms_isEarlierThan:(NSDate*)date;
-(BOOL)ms_isOlderThan:(NSDate*)date;

+(unsigned)ms_lastDayOfMonth:(int)month;
+(BOOL)ms_isYearLeap:(int)year;

@end
