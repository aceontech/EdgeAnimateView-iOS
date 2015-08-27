//
// Created by Alex Manarpies on 26/08/15.
// Copyright (c) 2015 Alex Manarpies. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
* Adds support for loading embedded NSBundles.
*/
@interface NSBundle (EdgeAnimateSupport)

/**
* Loads an embedded NSBundle from the app bundle by name.
* @param name The bundle name.
*/
+ (NSBundle *)eas_bundleNamed:(NSString *)name;

@end