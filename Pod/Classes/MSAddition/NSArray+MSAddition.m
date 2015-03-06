//
//  NSArray+MSAddition.m
//  MSAddition
//
//  Created by Marcin Stepnowski on 27/01/15.
//  Copyright (c) 2015 siema. All rights reserved.
//

#import "NSArray+MSAddition.h"

@implementation NSArray (MSAddition)

-(BOOL)ms_containsObjectFromArray:(NSArray *)other{
    __block BOOL equal;
    [other enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        equal = [self containsObject:obj];
        *stop = !equal;
    }];
    
    return equal;
}

-(BOOL)ms_isEqualToObjectsFromArray:(NSArray *)other{
    if(!other || [other count] != [self count])
        return NO;
    
    NSCountedSet *sets[2];
    sets[0] = [NSCountedSet setWithArray:self];
    sets[1] = [NSCountedSet setWithArray:other];
    
    return [sets[0] isEqualToSet:sets[1]];
}

-(NSArray*)ms_uniquesPropertiesForKeyPath:(NSString *)key{
    NSArray* properties = [self valueForKeyPath:key];
    NSSet* set = [NSSet setWithArray:[properties ms_arrayRemovingNull]];
    return [set allObjects];
}

-(NSArray*)ms_arrayRemovingNull {
    NSMutableArray* mut = [self mutableCopy];
    [mut removeObject:[NSNull null]];
    return [mut copy];
}

@end
