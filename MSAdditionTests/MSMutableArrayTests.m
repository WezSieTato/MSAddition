//
//  MSMutableArrayTests.m
//  MSAddition
//
//  Created by Marcin Stepnowski on 24.01.2016.
//  Copyright © 2016 siema. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSMutableArray+MSAddition.h"

@interface MSMutableArrayTests : XCTestCase

@end

@implementation MSMutableArrayTests

- (void)testMoveObject {
    NSMutableArray *arr1 = [@[ @0, @1, @2, @3, @4, @5, @6] mutableCopy];
    NSMutableArray *arr2 = [@[ @0, @2, @3, @4, @1, @5, @6] mutableCopy];

    [arr1 ms_moveObjectFromPosition:1 toIndex:4];
    
    XCTAssertEqualObjects(arr1, arr2);
}

@end
