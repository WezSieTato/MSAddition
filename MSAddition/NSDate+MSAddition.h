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

-(bool)ms_isEqualDay:(NSDate*)date;
-(bool)ms_isEarlierThan:(NSDate*)date;
-(bool)ms_isOlderThan:(NSDate*)date;

@end
