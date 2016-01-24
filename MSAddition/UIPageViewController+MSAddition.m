//
//  UIPageViewController+MSAddition.m
//  MSAddition
//
//  Created by Marcin Stepnowski on 24.01.2016.
//  Copyright © 2016 siema. All rights reserved.
//

#import "UIPageViewController+MSAddition.h"

@implementation UIPageViewController (MSAddition)

-(UIScrollView*)ms_scrollView{
    for (UIView *view in self.view.subviews) {
        if ([view isKindOfClass:[UIScrollView class]]) {
            return (UIScrollView*)view;
        }
    }
    return nil;
}

@end
