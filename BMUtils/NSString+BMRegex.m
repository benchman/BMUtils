//
//  NSString+BMRegex.m
//  BMUtils
//
//  Created by Aleksey Nemychenkov on 20/01/16.
//  Copyright © 2016 Aleksey Nemychenkov. All rights reserved.
//

#import "NSString+BMRegex.h"

static NSString * const kEmailRegex = @"[A-Za-z0-9._+-]+@[A-Za-z0-9._-]+\\.[A-Za-z0-9]{2,6}";
static NSString * const kHasDigitRegex = @".*[0-9]+.*";
static NSString * const kHasUppercaseRegex = @".*[[:upper:]]+.*";
static NSString * const kHasSymbolRegex = @".*[[:punct:]]+.*";

@implementation NSString (SIG)

- (BOOL)isValidEmail {
    return [[NSPredicate predicateWithFormat:@"SELF MATCHES %@", kEmailRegex] evaluateWithObject:self];
}

- (BOOL)hasDigit {
    return [[NSPredicate predicateWithFormat:@"SELF MATCHES %@", kHasDigitRegex] evaluateWithObject:self];
}

- (BOOL)hasUppercase {
    return [[NSPredicate predicateWithFormat:@"SELF MATCHES %@", kHasUppercaseRegex] evaluateWithObject:self];
}

- (BOOL)hasSymbol {
    return [[NSPredicate predicateWithFormat:@"SELF MATCHES %@", kHasSymbolRegex] evaluateWithObject:self];
}

@end
