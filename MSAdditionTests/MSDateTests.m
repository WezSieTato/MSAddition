//
//  MSDate.m
//  MSAddition
//
//  Created by Marcin Stepnowski on 25/02/15.
//  Copyright (c) 2015 siema. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSDate+MSAddition.h"

@interface MSDateTest : XCTestCase

@end

@implementation MSDateTest

- (void)testComponents{
    NSDate *date = [NSDate ms_dateWithYear:2013 month:3 day:14 hour:18 minute:30 second:40];
    XCTAssertEqual([date ms_day], 14, @"Wrong day: %lu", (unsigned long)[date ms_day]);
    XCTAssertEqual([date ms_month], 3, @"Wrong month: %lu", (unsigned long)[date ms_month]);
    XCTAssertEqual([date ms_year], 2013, @"Wrong year: %lu", (unsigned long)[date ms_year]);
    XCTAssertEqual([date ms_hour], 18, @"Wrong hour: %lu", (unsigned long)[date ms_hour]);
    XCTAssertEqual([date ms_minute], 30, @"Wrong minute: %lu", (unsigned long)[date ms_minute]);
    XCTAssertEqual([date ms_second], 40, @"Wrong second: %lu", (unsigned long)[date ms_second]);
    XCTAssertEqual([date ms_second], 40, @"Wrong second: %lu", (unsigned long)[date ms_second]);
    XCTAssertEqual([date ms_weekday], 5, @"Wrong weekday: %lu", (unsigned long)[date ms_weekday]);
}



-(void)testIsEquaDaylShouldReturnTrue{
    NSDate *date1 = [NSDate dateWithTimeIntervalSince1970:1453581660000];
    NSDate *date2 = [NSDate dateWithTimeIntervalSince1970:1453581640000];

    XCTAssertTrue([date1 ms_isEqualDay:date2]);
    XCTAssertTrue([date2 ms_isEqualDay:date1]);
    XCTAssertTrue([date2 ms_isEqualDay:date2]);
    XCTAssertTrue([date1 ms_isEqualDay:date1]);
}

-(void)testIsEqualDayShouldReturnFalse{
    NSDate *date1 = [NSDate dateWithTimeIntervalSince1970:1453581660000];
    NSDate *date2 = [NSDate dateWithTimeIntervalSince1970:1453322460000];

    XCTAssertFalse([date1 ms_isEqualDay:date2]);
    XCTAssertFalse([date2 ms_isEqualDay:date1]);
}

-(void)testIsEarlierAndIsOlder{
    NSDate *date1 = [NSDate dateWithTimeIntervalSince1970:1453322460000];
    NSDate *date2 = [NSDate dateWithTimeIntervalSince1970:1453581660000];

    XCTAssertTrue([date1 ms_isEarlierThan:date2]);
    XCTAssertTrue([date2 ms_isOlderThan:date1]);
}

-(void)testLastDayOfMonth{
    XCTAssertEqual([NSDate ms_lastDayOfMonth:1], 31);
    XCTAssertEqual([NSDate ms_lastDayOfMonth:2], 28);
    XCTAssertEqual([NSDate ms_lastDayOfMonth:3], 31);
    XCTAssertEqual([NSDate ms_lastDayOfMonth:4], 30);
    XCTAssertEqual([NSDate ms_lastDayOfMonth:5], 31);
    XCTAssertEqual([NSDate ms_lastDayOfMonth:6], 30);
    XCTAssertEqual([NSDate ms_lastDayOfMonth:7], 31);
    XCTAssertEqual([NSDate ms_lastDayOfMonth:8], 31);
    XCTAssertEqual([NSDate ms_lastDayOfMonth:9], 30);
    XCTAssertEqual([NSDate ms_lastDayOfMonth:10], 31);
    XCTAssertEqual([NSDate ms_lastDayOfMonth:11], 30);
    XCTAssertEqual([NSDate ms_lastDayOfMonth:12], 31);
    XCTAssertEqual([NSDate ms_lastDayOfMonth:0], 0);
}

-(void)testIsYearLeap{
    XCTAssertTrue([NSDate ms_isYearLeap:2000]);
    XCTAssertTrue([NSDate ms_isYearLeap:2004]);
    XCTAssertTrue([NSDate ms_isYearLeap:1996]);
    XCTAssertFalse([NSDate ms_isYearLeap:1900]);
    XCTAssertFalse([NSDate ms_isYearLeap:2001]);
}

@end
