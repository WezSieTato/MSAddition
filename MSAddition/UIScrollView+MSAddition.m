//
//  UIScrollView+MSAddition.m
//  MSAddition
//
//  Created by Marcin Stepnowski on 24.01.2016.
//  Copyright © 2016 siema. All rights reserved.
//

#import "UIScrollView+MSAddition.h"

@implementation UIScrollView (MSAddition)

-(void)ms_scrollToBottomAnimated:(BOOL)animated{
    [self ms_scrollToBottomWithInset:0.0f animated:animated];
}

-(void)ms_scrollToBottomWithInset:(CGFloat)bottomInset animated:(BOOL)animated{
    CGPoint bottomOffset = CGPointMake(0.0f, self.contentSize.height - self.bounds.size.height + bottomInset);
    [self setContentOffset:bottomOffset animated:animated];
}

-(void)ms_scrollToTopAnimated:(BOOL)animated{
    [self ms_scrollToTopWithInset:0.0f animated:animated];
}

-(void)ms_scrollToTopWithInset:(CGFloat)bottomInset animated:(BOOL)animated{
    CGPoint topOffset = CGPointMake(0.0f, 0.0f - bottomInset);
    [self setContentOffset:topOffset animated:animated];
}

@end
