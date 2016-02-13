//
//  BMKeychainWrapper.m
//  BMUtils
//
//  Created by Aleksey Nemychenkov on 20/01/16.
//  Copyright © 2016 Aleksey Nemychenkov. All rights reserved.
//

#import "BMKeychainWrapper.h"

@implementation BMKeychainWrapper

+ (NSDictionary *)searchDictForKey:(NSString *)key {
    return @{(id)kSecClass : (id)kSecClassGenericPassword,
             (id)kSecAttrLabel : key};
}

+ (BOOL)saveData:(NSData *)data forKey:(NSString *)key {
    if (!data || !key) {
        return NO;
    }
    
    NSDictionary *searchDict = [self searchDictForKey:key];
    SecItemDelete((CFDictionaryRef)searchDict);
    
    NSMutableDictionary *newDict = [NSMutableDictionary dictionaryWithDictionary:searchDict];
    newDict[(id)kSecValueData] = data;
    
    OSStatus status = SecItemAdd((CFDictionaryRef)newDict, NULL);
    return status == errSecSuccess;
}

+ (BOOL)saveString:(NSString *)string forKey:(NSString *)key {
    return [self saveData:[string dataUsingEncoding:NSUTF8StringEncoding] forKey:key];
}

+ (BOOL)deleteValueForKey:(NSString *)key {
    NSDictionary *searchDict = [self searchDictForKey:key];
    OSStatus status = SecItemDelete((CFDictionaryRef)searchDict);
    return status == errSecSuccess;
}

+ (NSData *)dataForKey:(NSString *)key {
    NSMutableDictionary *searchDict = [NSMutableDictionary dictionaryWithDictionary:[self searchDictForKey:key]];
    searchDict[(id)kSecReturnData] = @(YES);
    
    CFMutableDataRef result = nil;
    OSStatus status = SecItemCopyMatching((CFMutableDictionaryRef)searchDict, (CFTypeRef *)&result);
    if (status != errSecSuccess) {
        return nil;
    }
    
    return (__bridge_transfer NSData *)result;
}

+ (NSString *)stringForKey:(NSString *)key {
    NSData *data = [self dataForKey:key];
    if (data) {
        return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    }
    return nil;
}

@end
