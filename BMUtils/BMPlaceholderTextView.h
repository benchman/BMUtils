//
//  BMPlaceholderTextView.h
//  BMUtils
//
//  Created by Aleksey Nemychenkov on 31/01/16.
//  Copyright © 2016 Aleksey Nemychenkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BMPlaceholderTextView : UITextView

@property (strong, nonatomic) IBInspectable UIColor *placeholderColor;
@property (strong, nonatomic) IBInspectable NSString *placeholder;

@end
