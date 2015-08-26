//
//  EAVViewController.m
//  EdgeAnimateView-iOS
//
//  Created by Alex Manarpies on 08/26/2015.
//  Copyright (c) 2015 Alex Manarpies. All rights reserved.
//

#import <EdgeAnimateView.h>
#import <UIView+AOTToolkitAdditions.h>

#import "EAVViewController.h"

@interface EAVViewController ()
@property(nonatomic, strong) EdgeAnimateView *edgeAnimateView;
@end

@implementation EAVViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.edgeAnimateView = [[EdgeAnimateView alloc] init];
    [self.edgeAnimateView loadEdgeAnimateBundleName:@"ea_test"];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];

    [self.view addSubviewOnce:self.edgeAnimateView];
    self.edgeAnimateView.frame = self.view.bounds;
}

@end
