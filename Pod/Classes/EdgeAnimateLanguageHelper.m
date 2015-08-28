//
// Created by Alex Manarpies on 28/08/15.
//

#import "EdgeAnimateLanguageHelper.h"

@implementation EdgeAnimateLanguageHelper

+ (NSString *)currentLanguage {
    NSString *languageString = [NSLocale preferredLanguages].firstObject;
    NSString *language = [languageString componentsSeparatedByString:@"-"].firstObject;

    return language;
}

@end