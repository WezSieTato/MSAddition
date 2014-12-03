//
//  MSDictionary.m
//  MSAddition
//
//  Created by Marcin Stepnowski on 03/12/14.
//  Copyright (c) 2014 siema. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSDictionary+MSAddition.h"

@interface MSDictionary : XCTestCase

@end

@implementation MSDictionary

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testDictionaryWithoutNull{
    NSDictionary *dict = @{
                           @"siema" : @1,
                           @"albo" : [NSNull null],
                           @"sie" : @YES,
                           @"nie" : [NSNull null],
                           @"ma" : @"!",
                           @"hahaha" : [NSNull null]
                            };
    
    NSDictionary *dict2 = @{
                           @"siema" : @1,
                           @"sie" : @YES,
                           @"ma" : @"!"
                           };
    
    dict = [dict ms_dictionaryWithoutNull];
    
    XCTAssertEqualObjects(dict, dict2);
}

@end
