//
//  UIColor+BMColorHex.m
//  BMUtils
//
//  Created by Aleksey Nemychenkov on 13/02/16.
//  Copyright © 2016 Aleksey Nemychenkov. All rights reserved.
//

#import "UIColor+BMColorHex.h"

@implementation UIColor (BMColorHex)

+ (UIColor *)colorWithHex:(int)colorHex {
    return [self colorWithHex:colorHex alpha:1.0f];
}

+ (UIColor *)colorWithHex:(int)colorHex alpha:(float)alpha {
    int red = (colorHex & 0xFF0000) >> 16;
    int green = (colorHex & 0x00FF00) >> 8;
    int blue = (colorHex & 0x0000FF);
    return [self colorWithRed:red / 255.0f green:green / 255.0f blue:blue / 255.0f alpha:alpha];
}

@end
