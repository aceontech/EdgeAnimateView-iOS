//
// Created by Alex Manarpies on 26/08/15.
// Copyright (c) 2015 Alex Manarpies. All rights reserved.
//

#import <WebKit/WebKit.h>
#import "UIView+AOTToolkitAdditions.h"

#import "EdgeAnimateView.h"

#import "WKWebView+EdgeAnimateSupport.h"
#import "UIWebView+EdgeAnimateSupport.h"

@interface EdgeAnimateView ()
@property(nonatomic, strong) UIView <EdgeAnimateSupport> *animationView;
@end

@implementation EdgeAnimateView

- (UIView <EdgeAnimateSupport> *)animationView {
    if (!_animationView) {
        if (NSClassFromString(@"WKWebView")) {
            _animationView = [[WKWebView alloc] initWithFrame:CGRectZero
                                                configuration:[[WKWebViewConfiguration alloc] init]];
            NSLog(@"Using WKWebView");
        } else {
            _animationView = [[UIWebView alloc] init];
            _animationView.backgroundColor = [UIColor whiteColor];
            NSLog(@"Using UIWebView");
        }
    }
    return _animationView;
}

- (void)layoutSubviews {
    [super layoutSubviews];

    [self addSubviewOnce:self.animationView];
    self.animationView.frame = self.bounds;
}

#pragma mark - EdgeAnimateSupport

- (void)loadEdgeAnimateBundleName:(NSString *)bundleName {
    [self.animationView loadEdgeAnimateBundleName:bundleName];
}

- (void)loadEdgeAnimateBundle:(NSBundle *)bundle compositionName:(NSString *)compositionName {
    [self.animationView loadEdgeAnimateBundle:bundle compositionName:compositionName];
}

- (void)loadEdgeAnimateURL:(NSURL *)url {
    [self.animationView loadEdgeAnimateURL:url];
}

@end