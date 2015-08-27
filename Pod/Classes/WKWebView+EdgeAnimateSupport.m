//
// Created by Alex Manarpies on 26/08/15.
// Copyright (c) 2015 Alex Manarpies. All rights reserved.
//

#import <WebKit/WebKit.h>

#import "WKWebView+EdgeAnimateSupport.h"
#import "NSBundle+EdgeAnimateSupport.h"
#import "EdgeAnimateVersionHelper.h"

@implementation WKWebView (EdgeAnimateSupport)

- (void)loadEdgeAnimateBundleName:(NSString *)bundleName {
    return [self loadEdgeAnimateBundle:[NSBundle eas_bundleNamed:bundleName] compositionName:bundleName];
}

- (void)loadEdgeAnimateBundle:(NSBundle *)bundle compositionName:(NSString *)compositionName {
    [self configureOnce];

    // Workaround for iOS 8 bug in WKWebView local file loading.
    // Files need to be served from /tmp/www
    if ([EdgeAnimateVersionHelper systemVersionLessThan:@"9"]) {
        NSLog(@"Using iOS 8 WKWebView workaround");
        NSString *copiedBundlePath = [self copyBundleToTmpWww:bundle];
        bundle = [NSBundle bundleWithPath:copiedBundlePath];
    }

    // Build request
    NSString *path = [bundle pathForResource:compositionName ofType:@"html"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];

    [self loadRequest:request];
}

- (void)loadEdgeAnimateURL:(NSURL *)url {
    [self configureOnce];

    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self loadRequest:request];
}

#pragma mark - Internal

- (void)configureOnce {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        // Script disables scaling/zooming
        NSString *source = @"var meta = document.createElement('meta'); \
meta.name = 'viewport'; \
meta.content = 'width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no'; \
var head = document.getElementsByTagName('head')[0];\
head.appendChild(meta);";
        WKUserScript *script = [[WKUserScript alloc] initWithSource:source injectionTime:WKUserScriptInjectionTimeAtDocumentEnd forMainFrameOnly:YES];

        // Add scripts to the web view
        if (self.configuration.userContentController == nil) {
            self.configuration.userContentController = [[WKUserContentController alloc] init];
        }
        [self.configuration.userContentController addUserScript:script];

        // Disable scrolling
        self.scrollView.scrollEnabled = NO;
    });
}

- (NSString *)copyBundleToTmpWww:(NSBundle *)bundle {
    NSFileManager *manager = [NSFileManager defaultManager];
    NSString *tempPath = [NSTemporaryDirectory() stringByAppendingPathComponent:@"www"];
    NSError *error = nil;

    if (![manager createDirectoryAtPath:tempPath withIntermediateDirectories:YES attributes:nil error:&error]) {
        NSLog(@"Could not create www directory. Error: %@", error);
        return nil;
    }

    NSString *copiedBundlePath = [tempPath stringByAppendingPathComponent:bundle.bundlePath.lastPathComponent];

    if (![manager fileExistsAtPath:copiedBundlePath]) {
        if (![manager copyItemAtPath:bundle.bundlePath toPath:copiedBundlePath error:&error]) {
            NSLog(@"Couldn't copy file to /tmp/www. Error: %@", error);
            return nil;
        }
    }

    return copiedBundlePath;
}

@end