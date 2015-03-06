//
//  NSMutableString+Raplace.m
//  Kiwi
//
//  Created by Marcin Stepnowski on 04/11/14.
//  Copyright (c) 2014 siema. All rights reserved.
//

#import "NSMutableString+MSAddition.h"

@implementation NSMutableString (MSAddition)

-(void)ms_prependString:(NSString *)string{
    [self insertString:string atIndex:0];
}

-(void)ms_replaceString:(NSString *)toReplace withString:(NSString *)newString{
    NSRange range = NSMakeRange(0, [self length]);
    [self replaceOccurrencesOfString:toReplace withString:newString options:0 range:range];
}

-(void)ms_replacePolishCharacters{
    [self ms_replaceString:@"ą" withString:@"a"];
    [self ms_replaceString:@"ć" withString:@"c"];
    [self ms_replaceString:@"ę" withString:@"e"];
    [self ms_replaceString:@"ł" withString:@"l"];
    [self ms_replaceString:@"ń" withString:@"n"];
    [self ms_replaceString:@"ó" withString:@"o"];
    [self ms_replaceString:@"ś" withString:@"s"];
    [self ms_replaceString:@"ź" withString:@"z"];
    [self ms_replaceString:@"ż" withString:@"z"];

    [self ms_replaceString:@"Ą" withString:@"A"];
    [self ms_replaceString:@"Ć" withString:@"C"];
    [self ms_replaceString:@"Ę" withString:@"E"];
    [self ms_replaceString:@"Ł" withString:@"L"];
    [self ms_replaceString:@"Ń" withString:@"N"];
    [self ms_replaceString:@"Ó" withString:@"O"];
    [self ms_replaceString:@"Ś" withString:@"S"];
    [self ms_replaceString:@"Ż" withString:@"Z"];
    [self ms_replaceString:@"Ź" withString:@"Z"];
}

@end
