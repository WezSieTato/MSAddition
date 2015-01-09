//
//  NSObject+MSAddition.m
//  MSAddition
//
//  Created by Marcin Stepnowski on 09/01/15.
//  Copyright (c) 2015 siema. All rights reserved.
//

#import "NSObject+MSAddition.h"

@implementation NSObject (MSAddition)

-(NSInteger)ms_intPointer{
    return (NSUInteger)objc_unretainedPointer(self);
}

+(instancetype)ms_objectFromIntPointer:(NSInteger)pointer{
    return objc_unretainedObject(pointer);
}

@end
