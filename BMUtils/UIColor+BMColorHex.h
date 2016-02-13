//
//  UIColor+BMColorHex.h
//  BMUtils
//
//  Created by Aleksey Nemychenkov on 13/02/16.
//  Copyright © 2016 Aleksey Nemychenkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (BMColorHex)

+ (UIColor *)colorWithHex:(int)colorHex;
+ (UIColor *)colorWithHex:(int)colorHex alpha:(float)alpha;

@end
