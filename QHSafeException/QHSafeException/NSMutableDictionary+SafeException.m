//
//  NSMutableDictionary+SafeException.m
//  QHSafeException
//
//  Created by QianHan on 2017/12/6.
//  Copyright © 2017年 karl.luo. All rights reserved.
//

#import "NSMutableDictionary+SafeException.h"
#import <objc/runtime.h>
#import "NSObject+Swizzle.h"

@implementation NSMutableDictionary (SafeException)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        @autoreleasepool {
            [objc_getClass("__NSDictionaryM") swizzleMethod:@selector(setObject:forKey:) swizzledSelector:@selector(qh_setObject:forKey:)];
            [objc_getClass("__NSDictionaryM") swizzleMethod:@selector(removeObjectForKey) swizzledSelector:@selector(qh_removeObjectForKey:)];
        }
    });
}

- (void)qh_setObject:(nonnull id)object forKey:(nonnull id<NSCopying>)key {
    if (object == nil
        || key == nil) {
        return;
    }
    [self qh_setObject:object forKey:key];
}

- (void)qh_removeObjectForKey:(NSString *)key {
    if (key == nil) {
        return;
    }
    [self qh_removeObjectForKey:key];
}

@end
