//
//  UIView+BMFindSubview.h
//  BMUtils
//
//  Created by Aleksey Nemychenkov on 03/12/15.
//  Copyright © 2015 Aleksey Nemychenkov. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef BOOL (^ConditionBlock)(UIView *view);

@interface UIView (BMFindSubview)

/**
 *  Recursively searches through view's subviews for a view that matches condition
 *
 *  @param condition Block that returns true if subview mathes condition
 *
 *  @return Subview that mathes condition or nil if not found
 */
- (UIView *)findSubviewMatchingCondition:(ConditionBlock)condition;

@end
