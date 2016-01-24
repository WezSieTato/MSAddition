//
//  NSMutableArray+MSAddition.m
//  MSAddition
//
//  Created by Marcin Stepnowski on 24.01.2016.
//  Copyright © 2016 siema. All rights reserved.
//

#import "NSMutableArray+MSAddition.h"

@implementation NSMutableArray (MSAddition)

- (void)ms_moveObjectFromPosition:(NSUInteger)fromPosition toIndex:(NSUInteger)endPosition
{
    id object = self[fromPosition];
    [self removeObjectAtIndex:fromPosition];
    [self insertObject:object atIndex:endPosition];
}

@end
