//
// Created by Alex Manarpies on 26/08/15.
// Copyright (c) 2015 Alex Manarpies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "EdgeAnimateSupport.h"

/**
* EdgeAnimateView is a wrapper view which selects the best type of web view for the target iOS it's running on.
*
* iOS 7: UIWebView
* iOS 8 and 9: WKWebView (WebKit.framework)
*/
@interface EdgeAnimateView : UIView <EdgeAnimateSupport>
@end