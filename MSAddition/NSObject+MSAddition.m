//
//  NSObject+MSAddition.m
//  MSAddition
//
//  Created by Marcin Stepnowski on 09/01/15.
//  Copyright (c) 2015 siema. All rights reserved.
//

#import "NSObject+MSAddition.h"
#import <objc/runtime.h>

@implementation NSObject (MSAddition)

-(NSInteger)ms_intPointer{
    return (NSUInteger)objc_unretainedPointer(self);
}

- (NSDictionary *)ms_dictionaryRepresentation {
    unsigned int count = 0;
    // Get a list of all properties in the class.
    objc_property_t *properties = class_copyPropertyList([self class], &count);
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] initWithCapacity:count];
    for (int i = 0; i < count; i++) {
        NSString *key = [NSString stringWithUTF8String:property_getName(properties[i])];
        NSString *value = [self valueForKey:key];
        // Only add to the NSDictionary if it's not nil.
        if (value)
            [dictionary setObject:value forKey:key];
    }
    free(properties);
    return dictionary;
}

-(NSDictionary*)ms_dictionaryRepresentationForKeys:(NSArray *)keys{
    NSDictionary* whole = [self ms_dictionaryRepresentation];
    NSMutableDictionary* dict = [NSMutableDictionary new];
    for (id key in keys) {
        id value = whole[key];
        if(value)
            dict[key] = value;
    }
    return [dict copy];
}

+(instancetype)ms_objectFromIntPointer:(NSInteger)pointer{
    return objc_unretainedObject(pointer);
}

-(NSString*)ms_descriptionFromProperties:(NSArray*)propertyNames{
    NSMutableString* des = [NSMutableString new];
    
    [des appendString:[[self class] description]];
    [des appendString:@":{\n"];
    
    for (NSString* propertyName in propertyNames) {
        [des appendString:@"\t"];
        [des appendString:propertyName];
        [des appendString:@" : "];
        id obj =[self valueForKey:propertyName];
        if( !obj){
            [des appendString: @"nil"];
            
        } else {
            [des appendString:[[self valueForKey:propertyName] description]];
        }
        [des appendString:@"\n"];
    }
    
    [des appendString:@"}"];
    return [des copy];
}

@end
