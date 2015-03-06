//
//  NSMutableString+Raplace.h
//  Kiwi
//
//  Created by Marcin Stepnowski on 04/11/14.
//  Copyright (c) 2014 siema. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableString (MSAddition)

-(void)ms_prependString:(NSString*)string;

-(void)ms_replaceString:(NSString*)toReplace withString:(NSString*)newString;
-(void)ms_replacePolishCharacters;

@end
