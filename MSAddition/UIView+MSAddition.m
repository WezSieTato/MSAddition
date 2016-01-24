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

-(void)ms_setSizeFrame:(CGSize)ms_sizeFrame{
    CGRect frame = self.frame;
    frame.size = ms_sizeFrame;
    self.frame = frame;
}

-(CGSize)ms_sizeFrame{
    return self.frame.size;
}

-(NSArray<UIView *> *)ms_allSubViews{
    NSMutableArray *arr = [[NSMutableArray alloc] init];
    [arr addObject:self];
    for (UIView *subview in self.subviews)
    {
        [arr addObjectsFromArray:(NSArray*)[subview ms_allSubViews]];
    }
    return [arr copy];
}


-(void)ms_addTapToHideKeyboardRecognizer{
    UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(ms_hideKeyboard)];
    tapRecognizer.cancelsTouchesInView = NO;
    [self addGestureRecognizer:tapRecognizer];
}

-(void)ms_hideKeyboard{
    [self endEditing:YES];
}

-(void)ms_addSubviewWithFitToParentConstraints:(UIView *)subview{
    [self addSubview: subview];
    
    [subview setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self addConstraints:[NSLayoutConstraint
                          constraintsWithVisualFormat:@"H:|-0-[subview]-0-|"
                          options:NSLayoutFormatDirectionLeadingToTrailing
                          metrics:nil
                          views:NSDictionaryOfVariableBindings(subview)]];
    [self addConstraints:[NSLayoutConstraint
                          constraintsWithVisualFormat:@"V:|-0-[subview]-0-|"
                          options:NSLayoutFormatDirectionLeadingToTrailing
                          metrics:nil
                          views:NSDictionaryOfVariableBindings(subview)]];
}

-(void)ms_animateConstraintWithDuration:(NSTimeInterval)duration animations:(void (^)(void))animations
                      withCompletion:(void (^)(BOOL))completion{
    
    animations();
    
    [self setNeedsUpdateConstraints];
    [UIView animateWithDuration:duration animations:^{
        [self layoutIfNeeded];
    } completion:^(BOOL finished) {
        if(completion)
            completion(finished);
    }];
}

-(void)ms_animateConstraintWithDuration:(NSTimeInterval)duration animations:(void (^)(void))animations{
    [self ms_animateConstraintWithDuration:duration animations:animations withCompletion:nil];
}

@end
