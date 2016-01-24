//
//  UIScrollView+MSAddition.m
//  MSAddition
//
//  Created by Marcin Stepnowski on 24.01.2016.
//  Copyright © 2016 siema. All rights reserved.
//

#import "UIScrollView+MSAddition.h"

@implementation UIScrollView (MSAddition)

-(void)ms_scrollToBottom{
    [self ms_scrollToBottomWithInset:0.0f];
}

-(void)ms_scrollToBottomWithInset:(CGFloat)bottomInset{
    CGPoint bottomOffset = CGPointMake(0.0f, self.contentSize.height - self.bounds.size.height + bottomInset);
    [self setContentOffset:bottomOffset animated:YES];
}

-(void)ms_scrollToTop{
    [self ms_scrollToTopWithInset:0.0f];
}

-(void)ms_scrollToTopWithInset:(CGFloat)bottomInset{
    CGPoint topOffset = CGPointMake(0.0f, 0.0f - bottomInset);
    [self setContentOffset:topOffset animated:YES];
}

@end
