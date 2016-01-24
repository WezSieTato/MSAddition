//
//  UIFont+MSAddition.m
//  MSAddition
//
//  Created by Marcin Stepnowski on 24.01.2016.
//  Copyright © 2016 siema. All rights reserved.
//

#import "UIFont+MSAddition.h"

@implementation UIFont (MSAddition)

+(void)ms_printAllFontNames{
    for (NSString *fontFamilyName in [UIFont familyNames]) {
        for (NSString *fontName in [UIFont fontNamesForFamilyName:fontFamilyName]) {
            NSLog(@"Family: %@    Font: %@", fontFamilyName, fontName);
        }
    }
}

@end
