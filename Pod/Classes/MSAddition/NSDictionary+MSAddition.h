//
//  NSDictionary+NullRemover.h
//  Kiwi
//
//  Created by Marcin Stepnowski on 13/10/14.
//  Copyright (c) 2014 siema. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (MSAddition)

-(NSDictionary*)ms_dictionaryWithoutNull;

@end
