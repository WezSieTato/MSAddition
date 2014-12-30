//
//  NSString+Addition.h
//  Kiwi
//
//  Created by Marcin Stepnowski on 04/11/14.
//  Copyright (c) 2014 siema. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (MSAddition)

@property (nonatomic, readonly) NSNumber* ms_numberValue;
@property (nonatomic, readonly) NSArray* ms_charsArray;
@property (nonatomic, readonly) NSArray* ms_wordsArray;
@property (nonatomic, readonly) BOOL ms_isEmail;

-(NSString*)ms_stringByRemovingCharactersInString:(NSString*)characters;
-(NSString*)ms_stringByRemovingEverythingWithoutCharactersInString:(NSString*)characters;
-(NSString*)ms_stringByReplacingCharactersInString:(NSString*)characters
                                        withString:(NSString*)newString;

-(NSString*)ms_stringByRemovingCharactersInSet:(NSCharacterSet*)set;
-(NSString*)ms_stringByRemovingEverythingWithoutCharactersInSet:(NSCharacterSet*)set;
-(NSString*)ms_stringByReplacingCharactersInSet:(NSCharacterSet*)set
                                     withString:(NSString*)newString;

@end
