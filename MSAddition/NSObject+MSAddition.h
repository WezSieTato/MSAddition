//
//  NSObject+MSAddition.h
//  MSAddition
//
//  Created by Marcin Stepnowski on 09/01/15.
//  Copyright (c) 2015 siema. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (MSAddition)

@property (nonatomic, readonly) NSInteger ms_intPointer;

+(instancetype)ms_objectFromIntPointer:(NSInteger)pointer;

@end
