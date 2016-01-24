//
//  UIScrollView+MSAddition.h
//  MSAddition
//
//  Created by Marcin Stepnowski on 24.01.2016.
//  Copyright © 2016 siema. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (MSAddition)

-(void)ms_scrollToBottom;
-(void)ms_scrollToBottomWithInset:(CGFloat)bottomInset;
-(void)ms_scrollToTop;
-(void)ms_scrollToTopWithInset:(CGFloat)bottomInset;

@end
