//
//  NSMutableArray+MSAddition.h
//  MSAddition
//
//  Created by Marcin Stepnowski on 24.01.2016.
//  Copyright © 2016 siema. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (MSAddition)

- (void)ms_moveObjectFromPosition:(NSUInteger)fromPosition toIndex:(NSUInteger)endPosition;

@end
