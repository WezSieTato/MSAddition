//
//  NSURL+MSAddition.m
//  MSAddition
//
//  Created by Marcin Stepnowski on 06/02/15.
//  Copyright (c) 2015 siema. All rights reserved.
//

#import "NSURL+MSAddition.h"

@implementation NSURL (MSAddition)

+ (NSURL *)urlToApplicationSupportDirectory
{
    NSString *applicationSupportDirectory = [NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory,
                                                                                 NSUserDomainMask,
                                                                                 YES) objectAtIndex:0];
    BOOL isDir = NO;
    NSError *error = nil;
    NSFileManager *fileManager = [[NSFileManager alloc] init];
    if (![fileManager fileExistsAtPath:applicationSupportDirectory
                           isDirectory:&isDir] && isDir == NO) {
        [fileManager createDirectoryAtPath:applicationSupportDirectory
               withIntermediateDirectories:NO
                                attributes:nil
                                     error:&error];
    }
    return [NSURL fileURLWithPath:applicationSupportDirectory];
}

+(NSURL *)urlToApplicationDocumentsDirectory
{
    NSArray *searchPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [searchPaths lastObject];
    
    return [NSURL fileURLWithPath:documentPath];
}

@end
