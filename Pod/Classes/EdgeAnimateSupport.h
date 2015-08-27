//
// Created by Alex Manarpies on 26/08/15.
// Copyright (c) 2015 Alex Manarpies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WebKit/WKWebView.h>

/**
* Defines the contract for Edge Animate supporting classes.
*/
@protocol EdgeAnimateSupport <NSObject>

/**
* Loads an Edge Animate bundle by name.
* This method assumes the containing html file has the same name as the the bundle.
* @param bundleName The bundle name
*/
- (void)loadEdgeAnimateBundleName:(NSString *)bundleName;

/**
* Loads an Edge Animate bundle instance directly.
* @param compositionName The name of the html file containing the animation.
*/
- (void)loadEdgeAnimateBundle:(NSBundle *)bundle compositionName:(NSString *)compositionName;

/**
* Loads an animation from a remote URL directly.
*/
- (void)loadEdgeAnimateURL:(NSURL *)url;

@end