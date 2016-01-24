//
//  UIView+MSAddition.h
//  MSAddition
//
//  Created by Marcin Stepnowski on 21/01/15.
//  Copyright (c) 2015 siema. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (MSAddition)

@property (nonatomic, setter=ms_setOriginFrame:) CGPoint ms_originFrame;
@property (nonatomic, setter=ms_setSizeFrame:) CGSize ms_sizeFrame;
@property (nonatomic, readonly) NSArray <UIView *>* ms_allSubViews;

-(void)ms_addSubviewWithFitToParentConstraints:(UIView *)subview;
-(void)ms_addTapToHideKeyboardRecognizer;
-(void)ms_hideKeyboard;
-(void)ms_animateConstraintWithDuration:(NSTimeInterval)duration animations:(void (^)(void))animations
                      withCompletion:(void (^)(BOOL finished))completion ;
-(void)ms_animateConstraintWithDuration:(NSTimeInterval)duration animations:(void (^)(void))animations;

@end
