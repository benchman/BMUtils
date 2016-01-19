//
//  UIView+BMFindSubview.m
//  BMUtils
//
//  Created by Aleksey Nemychenkov on 03/12/15.
//  Copyright © 2015 Aleksey Nemychenkov. All rights reserved.
//

#import "UIView+BMFindSubview.h"

@implementation UIView (BMFindSubview)

- (UIView *)findSubviewMatchingCondition:(ConditionBlock)condition {
    if (condition(self)) {
        return self;
    }
    
    for (UIView *subview in self.subviews) {
        UIView *next = [subview findSubviewMatchingCondition:condition];
        if (next) {
            return next;
        }
    }
    
    return nil;
}

@end
