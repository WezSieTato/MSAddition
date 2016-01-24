//
//  UIScrollView+MSAddition.h
//  MSAddition
//
//  Created by Marcin Stepnowski on 24.01.2016.
//  Copyright © 2016 siema. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (MSAddition)

-(void)ms_scrollToBottomAnimated:(BOOL)animated;
-(void)ms_scrollToBottomWithInset:(CGFloat)bottomInset animated:(BOOL)animated;
-(void)ms_scrollToTopAnimated:(BOOL)animated;
-(void)ms_scrollToTopWithInset:(CGFloat)bottomInset animated:(BOOL)animated;

@end
