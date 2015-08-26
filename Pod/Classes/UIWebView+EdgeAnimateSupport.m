//
// Created by Alex Manarpies on 26/08/15.
// Copyright (c) 2015 Alex Manarpies. All rights reserved.
//

#import "UIWebView+EdgeAnimateSupport.h"
#import "NSBundle+EdgeAnimateSupport.h"

@implementation UIWebView (EdgeAnimateSupport)

- (void)loadEdgeAnimateBundleName:(NSString *)bundleName {
    [self loadEdgeAnimateBundle:[NSBundle eas_bundleNamed:bundleName] compositionName:bundleName];
}

- (void)loadEdgeAnimateBundle:(NSBundle *)bundle compositionName:(NSString *)compositionName {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        // Disable scrolling
        self.scrollView.scrollEnabled = NO;
    });

    NSString *path = [bundle pathForResource:compositionName ofType:@"html"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];

    [self loadRequest:request];
}

@end