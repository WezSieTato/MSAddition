//
//  UIView+MSAddition.m
//  MSAddition
//
//  Created by Marcin Stepnowski on 21/01/15.
//  Copyright (c) 2015 siema. All rights reserved.
//

#import "UIView+MSAddition.h"

@implementation UIView (MSAddition)

-(void)ms_setOriginFrame:(CGPoint)ms_originFrame{
    CGRect frame = self.frame;
    frame.origin = ms_originFrame;
    self.frame = frame;
}

-(CGPoint)ms_originFrame{
    return self.frame.origin;
}

@end
