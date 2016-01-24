//
//  MSObjectTest.m
//  MSAddition
//
//  Created by Marcin Stepnowski on 09/01/15.
//  Copyright (c) 2015 siema. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSObject+MSAddition.h"
#import "MSTestObject.h"

@interface MSObjectTest : XCTestCase

@end

@implementation MSObjectTest

- (void)testIntPointerConversion{
    NSObject* obj = [NSObject new];
    NSUInteger ptr = [obj ms_intPointer];
    NSObject* test = [NSObject ms_objectFromIntPointer:ptr];
    
    XCTAssertEqual((NSUInteger)obj, ptr);
    XCTAssertEqualObjects(obj, test);
}

- (void)testDictionaryRepresentation{
    MSTestObject* test = [MSTestObject new];
    test.string = @"siema";
    test.number = @1;
    NSDictionary* result = @{
                             @"string" : @"siema",
                             @"number" : @1
                             };
    NSDictionary* representation = [test ms_dictionaryRepresentation];
    XCTAssertEqualObjects(representation, result);
}

- (void)testDictionaryRepresentationForKeys{
    MSTestObject* test = [MSTestObject new];
    test.string = @"siema";
    test.number = @1;
    NSArray* keys = @[@"string"];
    NSDictionary* result = @{
                             @"string" : @"siema",
                             };
    NSDictionary* representation = [test ms_dictionaryRepresentationForKeys:keys];
    XCTAssertEqualObjects(representation, result);
}

- (void)testDescriptionForKeysShouldPrintEveryValues{
    MSTestObject* test = [MSTestObject new];
    test.string = @"siema";
    test.number = @1;
    
    NSArray* keys = @[@"string", @"number"];
    NSString* expected = @"MSTestObject:{\n\tstring : siema\n\tnumber : 1\n}";
    
    XCTAssertEqualObjects([test ms_descriptionFromProperties:keys], expected);
}

- (void)testDescriptionForKeysShouldPrintValueAndNil{
    MSTestObject* test = [MSTestObject new];
    test.string = @"siema";
    
    NSArray* keys = @[@"string", @"number"];
    NSString* expected = @"MSTestObject:{\n\tstring : siema\n\tnumber : nil\n}";
    
    XCTAssertEqualObjects([test ms_descriptionFromProperties:keys], expected);
}

@end
