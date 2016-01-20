//
//  BMKeychainWrapper.h
//  BMUtils
//
//  Created by Aleksey Nemychenkov on 20/01/16.
//  Copyright © 2016 Aleksey Nemychenkov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BMKeychainWrapper : NSObject

+ (BOOL)saveString:(NSString *)string forKey:(NSString *)key;
+ (BOOL)saveData:(NSData *)data forKey:(NSString *)key;
+ (BOOL)deleteValueForKey:(NSString *)key;
+ (NSString *)stringForKey:(NSString *)key;
+ (NSData *)dataForKey:(NSString *)key;

@end
