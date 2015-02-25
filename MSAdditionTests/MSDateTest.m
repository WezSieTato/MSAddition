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

- (void)testComponents
{
    NSDate *date = [NSDate ms_dateWithYear:2013 month:3 day:14 hour:18 minute:30 second:40];
    XCTAssertEqual([date ms_day], 14, @"Wrong day: %i", [date ms_day]);
    XCTAssertEqual([date ms_month], 3, @"Wrong month: %i", [date ms_month]);
    XCTAssertEqual([date ms_year], 2013, @"Wrong year: %i", [date ms_year]);
    XCTAssertEqual([date ms_hour], 18, @"Wrong hour: %i", [date ms_hour]);
    XCTAssertEqual([date ms_minute], 30, @"Wrong minute: %i", [date ms_minute]);
    XCTAssertEqual([date ms_second], 40, @"Wrong second: %i", [date ms_second]);
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
