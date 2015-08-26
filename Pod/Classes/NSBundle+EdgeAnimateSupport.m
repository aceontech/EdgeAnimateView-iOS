//
// Created by Alex Manarpies on 26/08/15.
// Copyright (c) 2015 Alex Manarpies. All rights reserved.
//

#import "NSBundle+EdgeAnimateSupport.h"

@implementation NSBundle (EdgeAnimateSupport)

+ (NSBundle *)eas_bundleNamed:(NSString *)name {
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:name ofType:@"bundle"];
    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
    return bundle;
}

@end