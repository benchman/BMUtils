//
//  NSArray+BMFunctional.m
//  BMUtils
//
//  Created by Aleksey Nemychenkov on 24/01/16.
//  Copyright © 2016 Aleksey Nemychenkov. All rights reserved.
//

#import "NSArray+BMFunctional.h"

@implementation NSArray (BMFunctional)

- (NSArray *)map:(MapBlock)block {
    NSMutableArray *tmp = [[NSMutableArray alloc] initWithCapacity:self.count];
    for (id entry in self) {
        [tmp addObject:block(entry)];
    }
    return [NSArray arrayWithArray:tmp];
}

- (NSArray *)filter:(FilterBlock)filter {
    NSMutableArray *tmp = [NSMutableArray new];
    for (id entry in self) {
        if (filter(entry)) {
            [tmp addObject:entry];
        }
    }
    return [NSArray arrayWithArray:tmp];
}

@end
