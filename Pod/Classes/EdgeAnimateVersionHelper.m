//
// Created by Alex Manarpies on 26/08/15.
//

#import "EdgeAnimateVersionHelper.h"


@implementation EdgeAnimateVersionHelper

+ (BOOL)systemVersionLessThan:(NSString *)versionString {
    return [[[UIDevice currentDevice] systemVersion] compare:versionString options:NSNumericSearch] == NSOrderedAscending;
}

@end