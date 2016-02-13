//
//  NSString+BMRegex.h
//  BMUtils
//
//  Created by Aleksey Nemychenkov on 20/01/16.
//  Copyright © 2016 Aleksey Nemychenkov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (BMRegex)

- (BOOL)isValidEmail;
- (BOOL)hasDigit;
- (BOOL)hasUppercase;
- (BOOL)hasSymbol;
- (BOOL)isValidUUID;

@end
