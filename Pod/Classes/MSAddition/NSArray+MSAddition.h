//
//  NSArray+MSAddition.h
//  MSAddition
//
//  Created by Marcin Stepnowski on 27/01/15.
//  Copyright (c) 2015 siema. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (MSAddition)

/**
 *  Returns a Boolean value that indicates whether a given array is present in the array.
 *
 *  This method determines every object from other array is present in the array by sending an
 *  isEqual: message to each of the array’s objects (and passing anObject as the parameter
 *  to each isEqual: message).
 *
 *  @param other An array
 *
 *  @return YES if every object from other array is present in the array, otherwise NO.
 */
-(BOOL)ms_containsObjectFromArray:(NSArray*)other;

/**
 *  Returns a Boolean value that indicates whether the receiver and a given array
 *  are element equal.
 *
 *  Two array are equal when contains the same element, but element order is ignored.
 *
 *  @param other The object to be compared to the receiver. May be nil, in which case this method returns NO.
 *
 *  @return YES if the receiver and anObject are equal, otherwise NO.
 */
-(BOOL)ms_isEqualToObjectsFromArray:(NSArray*)other;

-(NSArray*)ms_uniquesPropertiesForKeyPath:(NSString*)key;
-(NSArray*)ms_arrayRemovingNull;

@end
