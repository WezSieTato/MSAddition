//
//  MSStringTest.m
//  MSAddition
//
//  Created by Marcin Stepnowski on 03/12/14.
//  Copyright (c) 2014 siema. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSString+MSAddition.h"

@interface MSStringTest : XCTestCase

@end

@implementation MSStringTest

-(void)setUp {
    [super setUp];
}

-(void)tearDown {
    [super tearDown];
}

-(void)testNumber{
    NSString* str = @"13";
    XCTAssertEqualObjects([str ms_numberValue], @13);
    
    str = @"-13";
    XCTAssertEqualObjects([str ms_numberValue], @-13);
    
    str = @"0.256";
    XCTAssertEqualObjects([str ms_numberValue], @0.256);

}

-(void)testStringByRemovingCharactersInString{
    NSString* str = @"Prawdziwi faceci nie używają samogłosek!";
    str = [str ms_stringByRemovingCharactersInString:@"aieuyąo"];
    
    XCTAssertEqualObjects(str, @"Prwdzw fcc n żwj smgłsk!");
}

-(void)testStringByRemovingEverythingWithoutCharactersInString{
    NSString* str = @"Prawdziwi faceci nie używają samogłosek!";
    str = [str ms_stringByRemovingEverythingWithoutCharactersInString:@"Prwdz fcnżjsmgłk!"];
    
    XCTAssertEqualObjects(str, @"Prwdzw fcc n żwj smgłsk!");
}

-(void)testStringByReplacingCharactersInString{
    NSString* str = @"Prawdziwi faceci nie używają samogłosek!";
    str = [str ms_stringByReplacingCharactersInString:@"aieuyąo" withString:@"#"];
    
    XCTAssertEqualObjects(str, @"Pr#wdz#w# f#c#c# n## #ż#w#j# s#m#gł#s#k!");
}

-(void)testCharsArray{
    NSString* str = @"Siema!";
    NSArray* array = [str ms_charsArray];
    XCTAssertEqualObjects(array[0], @"S");
    XCTAssertEqualObjects(array[1], @"i");
    XCTAssertEqualObjects(array[2], @"e");
    XCTAssertEqualObjects(array[3], @"m");
    XCTAssertEqualObjects(array[4], @"a");
    XCTAssertEqualObjects(array[5], @"!");
    
    XCTAssertEqual([array count], 6);

}

-(void)testWordsArray{
    NSString* str = @"Siema! Albo\tsie,\nnie ma!";
    NSArray* array = [str ms_wordsArray];
    XCTAssertEqualObjects(array[0], @"Siema!");
    XCTAssertEqualObjects(array[1], @"Albo");
    XCTAssertEqualObjects(array[2], @"sie,");
    XCTAssertEqualObjects(array[3], @"nie");
    XCTAssertEqualObjects(array[4], @"ma!");

    XCTAssertEqual([array count], 5);

}

@end
