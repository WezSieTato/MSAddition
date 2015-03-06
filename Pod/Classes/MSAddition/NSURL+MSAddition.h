//
//  NSURL+MSAddition.h
//  MSAddition
//
//  Created by Marcin Stepnowski on 06/02/15.
//  Copyright (c) 2015 siema. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURL (MSAddition)

+(NSURL *)ms_urlToApplicationSupportDirectory;
+(NSURL *)ms_urlToApplicationDocumentsDirectory;

@end
