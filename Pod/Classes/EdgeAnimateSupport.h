//
// Created by Alex Manarpies on 26/08/15.
// Copyright (c) 2015 Alex Manarpies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WebKit/WKWebView.h>

@protocol EdgeAnimateSupport <NSObject>

- (void)loadEdgeAnimateBundleName:(NSString *)bundleName;

- (void)loadEdgeAnimateBundle:(NSBundle *)bundle compositionName:(NSString *)compositionName;

@end