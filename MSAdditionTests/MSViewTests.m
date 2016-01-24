//
//  MSView.m
//  MSAddition
//
//  Created by Marcin Stepnowski on 21/01/15.
//  Copyright (c) 2015 siema. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UIView+MSAddition.h"
#import "NSArray+MSAddition.h"

@interface MSViewTest : XCTestCase

@end

@implementation MSViewTest

- (void)testOriginFrame{
    UIView* view = [[UIView alloc] initWithFrame:CGRectMake(100, 200, 250, 250)];
    XCTAssertEqual(100, [view ms_originFrame].x);
    XCTAssertEqual(200, [view ms_originFrame].y);
    
    [view ms_setOriginFrame:CGPointMake(200, 100)];
    XCTAssertEqual(200, view.frame.origin.x);
    XCTAssertEqual(100, view.frame.origin.y);

}

-(void)testSizeFrame{
    UIView* view = [[UIView alloc] initWithFrame:CGRectMake(100, 200, 100, 200)];
    XCTAssertEqual(100, [view ms_sizeFrame].width);
    XCTAssertEqual(200, [view ms_sizeFrame].height);
    
    [view ms_setSizeFrame:CGSizeMake(200, 100)];
    XCTAssertEqual(200, view.frame.size.width);
    XCTAssertEqual(100, view.frame.size.height);
}

-(void)testAllSubviewsShouldReturnSelf{
    UIView* view = [[UIView alloc] initWithFrame:CGRectMake(100, 200, 100, 200)];
    NSArray* expected = @[view];
    
    XCTAssertEqualObjects(view.ms_allSubViews, expected);
}

-(void)testAllSubviewsWithDeepTree{
    UIView* view1 = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 1, 2)];
    UIView* view2 = [[UIView alloc] initWithFrame:CGRectMake(10, 20, 10, 20)];
    UIView* view3 = [[UIView alloc] initWithFrame:CGRectMake(100, 200, 100, 200)];

    [view1 addSubview:view2];
    [view2 addSubview:view3];
    
    NSArray* subview = view1.ms_allSubViews;
    NSArray* expected = @[view1, view2, view3];
    
    XCTAssertTrue([subview ms_containsObjectFromArray:expected]);
}

-(void)testAllSubviewsWithWideTree{
    UIView* view1 = [[UIView alloc] initWithFrame:CGRectMake(1, 2, 1, 2)];
    UIView* view2 = [[UIView alloc] initWithFrame:CGRectMake(10, 20, 10, 20)];
    UIView* view3 = [[UIView alloc] initWithFrame:CGRectMake(100, 200, 100, 200)];
    
    [view1 addSubview:view2];
    [view1 addSubview:view3];
    
    NSArray* subview = view1.ms_allSubViews;
    NSArray* expected = @[view1, view2, view3];
    
    XCTAssertTrue([subview ms_containsObjectFromArray:expected]);
}

@end
