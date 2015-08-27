//
// Created by Alex Manarpies on 26/08/15.
//

#import <Foundation/Foundation.h>


@interface EdgeAnimateVersionHelper : NSObject

/**
* Checks whether the iOS system version is lower a given version string
* @param versionString The version string, e.g. @"9.0"
*/
+ (BOOL)systemVersionLessThan:(NSString *)versionString;

@end