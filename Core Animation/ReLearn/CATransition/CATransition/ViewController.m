//
//  ViewController.m
//  CATransition
//
//  Created by Vinh Nguyen on 28/09/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "ViewController.h"
@import QuartzCore;

@interface ViewController ()
@property (nonatomic, strong) UIView *suchView;
@property (nonatomic, weak) CALayer *veryLayer;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.suchView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    
    self.veryLayer = [CALayer layer];
    self.veryLayer.frame = self.suchView.bounds;
    self.veryLayer.backgroundColor = [UIColor purpleColor].CGColor;
    
    // add a custom action
    CATransition *transition = [CATransition animation];
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromLeft;
    
    // provide self.veryLayer actions dictionary with the *transition instance value
    // for "backgroundColor" key
    self.veryLayer.actions = @{ @"backgroundColor" : transition };
    
    [self.suchView.layer addSublayer:self.veryLayer];
    [self.view addSubview:self.suchView];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap:)];
    tap.numberOfTapsRequired = 1;
    [self.view addGestureRecognizer:tap];
}

- (void)tap:(UITapGestureRecognizer *)sender
{
    CGFloat red = arc4random() / (CGFloat)INT_MAX;
    CGFloat green = arc4random() / (CGFloat)INT_MAX;
    CGFloat blue = arc4random() / (CGFloat)INT_MAX;
    self.veryLayer.backgroundColor = [UIColor colorWithRed:red
                                                     green:green
                                                      blue:blue
                                                     alpha:1.0].CGColor;
}

@end
