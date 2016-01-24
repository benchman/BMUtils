//
//  NSArray+BMFunctional.h
//  BMUtils
//
//  Created by Aleksey Nemychenkov on 24/01/16.
//  Copyright © 2016 Aleksey Nemychenkov. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef id(^MapBlock)(id object);
typedef BOOL(^FilterBlock)(id object);

@interface NSArray (BMFunctional)

- (NSArray *)map:(MapBlock)block;
- (NSArray *)filter:(FilterBlock)filter;

@end
