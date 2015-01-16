//
//  NSString+Addition.m
//  Kiwi
//
//  Created by Marcin Stepnowski on 04/11/14.
//  Copyright (c) 2014 siema. All rights reserved.
//

#import "NSString+MSAddition.h"

@implementation NSString (MSAddition)

#pragma mark - Properties

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

-(BOOL)ms_isEmail{
    if(![self length])
        return NO;
    
    NSString* emailRegex =
    @"(?:[a-z0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[a-z0-9!#$%\\&'*+/=?\\^_`{|}"
    @"~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\"
    @"x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-"
    @"z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5"
    @"]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-"
    @"9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21"
    @"-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])";
    
    NSPredicate* emailPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES[c] %@", emailRegex];
    
    return [emailPredicate evaluateWithObject:self];

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
