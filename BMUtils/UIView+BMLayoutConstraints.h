//
//  UIView+BMLayoutConstraints.h
//  BMUtils
//
//  Created by Aleksey Nemychenkov on 19/01/16.
//  Copyright © 2016 Aleksey Nemychenkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (BMLayoutConstraints)

- (void)coverWithView:(UIView *)view;

- (NSLayoutConstraint *)setWidth:(CGFloat)width;
- (NSLayoutConstraint *)setEqualWidthsWithSubview:(UIView *)view;

- (NSLayoutConstraint *)setHeight:(CGFloat)height;
- (NSLayoutConstraint *)setEqualHeightsWithSubview:(UIView *)view;

- (NSLayoutConstraint *)attachSubviewTrailing:(UIView *)view;
- (NSLayoutConstraint *)attachSubviewLeading:(UIView *)view;
- (NSLayoutConstraint *)attachSubviewTop:(UIView *)view;
- (NSLayoutConstraint *)attachSubviewBottom:(UIView *)view;

- (NSLayoutConstraint *)allignSubviewToTrailing:(UIView *)view;
- (NSLayoutConstraint *)allignSubviewToLeading:(UIView *)view;
- (NSLayoutConstraint *)allignSubviewToTop:(UIView *)view;
- (NSLayoutConstraint *)allignSubviewToBottom:(UIView *)view;

@end