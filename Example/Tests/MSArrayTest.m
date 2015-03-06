//
//  MSArrayTest.m
//  MSAddition
//
//  Created by Marcin Stepnowski on 27/01/15.
//  Copyright (c) 2015 siema. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <NSArray+MSAddition.h>
#import <NSDate+MSAddition.h>

@interface MSArrayTest : XCTestCase

@end

@implementation MSArrayTest

- (void)testContainsObjectFromArray{
    NSArray* bigArray = @[ @1, @2, @3, @4, @5, @6, @7, @8, @9];
    NSArray* smallArray = @[@1, @2, @4, @4];
    
    XCTAssertTrue([bigArray ms_containsObjectFromArray:smallArray]);
    XCTAssertFalse([smallArray ms_containsObjectFromArray:bigArray]);
    
}

-(void)testIsEqualToObjectsFromArray{
    NSArray* arrays[5];
    arrays[0] = @[@1, @2, @3, @5, @5];
    arrays[1] = @[@2, @3, @5, @5, @1];
    arrays[2] = @[@1, @2, @3, @4, @5];
    arrays[3] = @[];
    arrays[4] = @[@1, @2, @3, @5, @5, @1];

    
    XCTAssertTrue([arrays[0] ms_isEqualToObjectsFromArray:arrays[1]]);
    XCTAssertFalse([arrays[0] ms_isEqualToObjectsFromArray:arrays[2]]);
    XCTAssertFalse([arrays[0] ms_isEqualToObjectsFromArray:arrays[3]]);
    XCTAssertFalse([arrays[0] ms_isEqualToObjectsFromArray:nil]);
    XCTAssertFalse([arrays[0] ms_isEqualToObjectsFromArray:arrays[4]]);

    XCTAssertTrue([arrays[1] ms_isEqualToObjectsFromArray:arrays[0]]);
    XCTAssertFalse([arrays[2] ms_isEqualToObjectsFromArray:arrays[0]]);
    XCTAssertFalse([arrays[3] ms_isEqualToObjectsFromArray:arrays[0]]);
    XCTAssertFalse([arrays[4] ms_isEqualToObjectsFromArray:arrays[0]]);

}

-(void)testUniquesPropertiesForKeyPath{
    NSArray *array = @[
                       [NSDate ms_dateWithYear:2000 month:12 day:1],
                       [NSDate ms_dateWithYear:2000 month:1 day:1],
                       [NSDate ms_dateWithYear:2001 month:1 day:2],
                       [NSDate ms_dateWithYear:2002 month:12 day:3],
                       [NSDate ms_dateWithYear:2003 month:12 day:1]
                       ];
    NSArray* years = @[@2000, @2001, @2002, @2003];
    NSArray* result = [array ms_uniquesPropertiesForKeyPath:@"ms_year"];
    XCTAssertTrue([result ms_isEqualToObjectsFromArray:years]);
    
    NSArray* months = @[@1, @12];
    result = [array ms_uniquesPropertiesForKeyPath:@"ms_month"];
    XCTAssertTrue([result ms_isEqualToObjectsFromArray:months]);
    
    NSArray* days = @[@1, @2, @3];
    result = [array ms_uniquesPropertiesForKeyPath:@"ms_day"];
    XCTAssertTrue([result ms_isEqualToObjectsFromArray:days]);

}

-(void)testArrayRemovingNull{
    NSArray* array = @[@1, [NSNull null], @2, [NSNull null], @3, [NSNull null]];
    NSArray* result = @[@1, @2, @3];
    
    XCTAssertEqualObjects([array ms_arrayRemovingNull], result);
}

@end
