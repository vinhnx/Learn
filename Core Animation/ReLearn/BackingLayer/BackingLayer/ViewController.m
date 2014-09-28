//
//  ViewController.m
//  BackingLayer
//
//  Created by Vinh Nguyen on 28/09/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *awesomeView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.awesomeView.layer.backgroundColor = [UIColor cyanColor].CGColor;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap:)];
    tap.numberOfTapsRequired = 1;
    [self.view addGestureRecognizer:tap];
}

- (void)tap:(UITapGestureRecognizer *)sender
{
    [CATransaction begin];
    [CATransaction setAnimationDuration:1.0];
    CGFloat red = arc4random() / (CGFloat)INT_MAX;
    CGFloat green = arc4random() / (CGFloat)INT_MAX;
    CGFloat blue = arc4random() / (CGFloat)INT_MAX;
    self.awesomeView.layer.backgroundColor = [UIColor colorWithRed:red
                                                             green:green
                                                              blue:blue
                                                             alpha:1.0].CGColor;
    [CATransaction commit];
}

@end
