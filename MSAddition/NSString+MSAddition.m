//
//  NSString+Addition.m
//  Kiwi
//
//  Created by Marcin Stepnowski on 04/11/14.
//  Copyright (c) 2014 siema. All rights reserved.
//

#import "NSString+MSAddition.h"

@implementation NSString (MSAddition)

-(NSNumber*)ms_numberValue{
    NSNumberFormatter * f = [[NSNumberFormatter alloc] init];
    [f setNumberStyle:NSNumberFormatterDecimalStyle];
    NSNumber * myNumber = [f numberFromString:self];
    return myNumber;
}

-(NSArray*)ms_charsArray{
    NSMutableArray  *chars = [NSMutableArray array];
    
    [self enumerateSubstringsInRange: NSMakeRange(0, [self length]) options: NSStringEnumerationByComposedCharacterSequences
                          usingBlock: ^(NSString *inSubstring, NSRange inSubstringRange, NSRange inEnclosingRange, BOOL *outStop) {
                              [chars addObject: inSubstring];
                          }];
    
    return chars;
}

-(NSArray*)ms_wordsArray{
    NSMutableArray *parts = [NSMutableArray arrayWithArray:[self componentsSeparatedByCharactersInSet:[NSCharacterSet  whitespaceAndNewlineCharacterSet]]];
    [parts removeObjectIdenticalTo:@""];
    
    return [parts copy];
}

#pragma mark - Replacing from string

-(NSString*)ms_stringByRemovingCharactersInString:(NSString *)characters{
    NSCharacterSet *notAllowedChars = [NSCharacterSet characterSetWithCharactersInString: characters];
    return [self ms_stringByRemovingCharactersInSet:notAllowedChars];
}

-(NSString*)ms_stringByRemovingEverythingWithoutCharactersInString:(NSString *)characters{
    NSCharacterSet *notAllowedChars = [NSCharacterSet characterSetWithCharactersInString: characters];
    return [self ms_stringByRemovingEverythingWithoutCharactersInSet:notAllowedChars];
}

-(NSString*)ms_stringByReplacingCharactersInString:(NSString *)characters withString:(NSString *)newString{
    NSCharacterSet *searchSet = [NSCharacterSet characterSetWithCharactersInString: characters];
    return [self ms_stringByReplacingCharactersInSet:searchSet withString:newString];
}

#pragma mark - Replacing from set

-(NSString*)ms_stringByRemovingCharactersInSet:(NSCharacterSet *)set{
    NSString *resultString = [[self componentsSeparatedByCharactersInSet:set] componentsJoinedByString:@""];
    return resultString;
}

-(NSString*)ms_stringByRemovingEverythingWithoutCharactersInSet:(NSCharacterSet *)set{
    NSString *resultString = [[self componentsSeparatedByCharactersInSet:[set invertedSet]] componentsJoinedByString:@""];
    return resultString;
}

-(NSString*)ms_stringByReplacingCharactersInSet:(NSCharacterSet *)set withString:(NSString *)newString{
    return [[self componentsSeparatedByCharactersInSet:set] componentsJoinedByString:newString];
}

@end
