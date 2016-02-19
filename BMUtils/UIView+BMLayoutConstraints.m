//
//  UIView+BMLayoutConstraints.m
//  BMUtils
//
//  Created by Aleksey Nemychenkov on 19/01/16.
//  Copyright © 2016 Aleksey Nemychenkov. All rights reserved.
//

#import "UIView+BMLayoutConstraints.h"

@implementation UIView (BMLayoutConstraints)

- (void)coverWithView:(UIView *)view {
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:view];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:view attribute:NSLayoutAttributeTop multiplier:1.0 constant:0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:view attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:view attribute:NSLayoutAttributeWidth multiplier:1.0 constant:0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:view attribute:NSLayoutAttributeHeight multiplier:1.0 constant:0]];
}

- (NSLayoutConstraint *)setWidth:(CGFloat)width {
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:width];
    [self addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint *)setEqualWidthsWithSubview:(UIView *)view {
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:view attribute:NSLayoutAttributeWidth multiplier:1.0 constant:0];
    [self addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint *)setHeight:(CGFloat)width {
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:width];
    [self addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint *)setEqualHeightsWithSubview:(UIView *)view {
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:view attribute:NSLayoutAttributeHeight multiplier:1.0 constant:0];
    [self addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint *)attachSubview:(UIView *)view trailing:(CGFloat)trailing {
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:trailing];
    [self addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint *)attachSubview:(UIView *)view leading:(CGFloat)leading {
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeading multiplier:1.0 constant:leading];
    [self addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint *)attachSubview:(UIView *)view top:(CGFloat)top {
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0 constant:top];
    [self addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint *)attachSubview:(UIView *)view bottom:(CGFloat)bottom {
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1.0 constant:bottom];
    [self addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint *)allignSubviewToLeading:(UIView *)view {
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:view attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0];
    [self addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint *)allignSubviewToTrailing:(UIView *)view {
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:view attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0];
    [self addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint *)allignSubviewToTop:(UIView *)view {
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:view attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0];
    [self addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint *)allignSubviewToBottom:(UIView *)view {
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:view attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
    [self addConstraint:constraint];
    return constraint;
}

@end
