//
//  MSMutableStringAddition.m
//  MSAddition
//
//  Created by Marcin Stepnowski on 03/12/14.
//  Copyright (c) 2014 siema. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSMutableString+MSAddition.h"

@interface MSMutableStringTest : XCTestCase

@end

@implementation MSMutableStringTest

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

-(void)testPrependString{
    NSMutableString* mutable = [NSMutableString new];
    [mutable ms_prependString:@"siema"];
    
    XCTAssertEqualObjects(mutable, @"siema");
    [mutable ms_prependString:@"pre_"];
    XCTAssertEqualObjects(mutable, @"pre_siema");
}

-(void)testReplace{
    NSMutableString* mutable = [@"Siema siema elo!" mutableCopy];
    
    [mutable ms_replaceString:@"ma" withString:@" nie ma"];
    XCTAssertEqualObjects(mutable, @"Sie nie ma sie nie ma elo!");

    [mutable ms_replaceString:@" " withString:@""];
    XCTAssertEqualObjects(mutable, @"Sieniemasieniemaelo!");
}

-(void)testReplacePolish{
    NSMutableString* mutable = [@"Zażółć gęślą jaźń! ZAŻÓŁĆ GĘŚLĄ JAŹŃ!" mutableCopy];
    [mutable ms_replacePolishCharacters];
    XCTAssertEqualObjects(mutable, @"Zazolc gesla jazn! ZAZOLC GESLA JAZN!");

}

@end
