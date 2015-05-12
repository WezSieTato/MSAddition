//
//  MSObjectTest.m
//  MSAddition
//
//  Created by Marcin Stepnowski on 09/01/15.
//  Copyright (c) 2015 siema. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <NSObject+MSAddition.h>
#import "TestObject.h"

@interface MSObjectTest : XCTestCase

@end

@implementation MSObjectTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testIntPointerConversion{
    NSObject* obj = [NSObject new];
    NSUInteger ptr = [obj ms_intPointer];
    NSObject* test = [NSObject ms_objectFromIntPointer:ptr];
    
    XCTAssertEqual((NSUInteger)obj, ptr);
    XCTAssertEqualObjects(obj, test);
}

- (void)testDictionaryRepresentation{
    TestObject* test = [TestObject new];
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
    TestObject* test = [TestObject new];
    test.string = @"siema";
    test.number = @1;
    NSArray* keys = @[@"string"];
    NSDictionary* result = @{
                             @"string" : @"siema",
                             };
    NSDictionary* representation = [test ms_dictionaryRepresentationForKeys:keys];
    XCTAssertEqualObjects(representation, result);
}

-(void)testDescriptionFromProperties{
    TestObject* test = [TestObject new];
    test.string = @"siema";
    test.number = @1;
    NSString* result = @"\nTestObject:{\n\tstring : siema\n\tnumber : 1\n}";
    NSString* descr = [test ms_descriptionFromProperties:@[@"string", @"number"]];
    XCTAssertEqualObjects(descr, result);

}

@end
