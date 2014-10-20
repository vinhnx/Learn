//
//  ViewController.m
//  Layer Background Color with CABasicAnimation
//
//  Created by Vinh Nguyen on 01/10/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) UIView *awesomeView;
@property (nonatomic, strong) CALayer *suchLayer;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.awesomeView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    self.awesomeView.center = CGPointMake(20, 20);
    [self.view addSubview:self.awesomeView];
    
    self.suchLayer = [CALayer layer];
    self.suchLayer.frame = self.awesomeView.bounds;
    self.suchLayer.backgroundColor = [UIColor cyanColor].CGColor;
    [self.awesomeView.layer addSublayer:self.suchLayer];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap:)];
    tap.numberOfTapsRequired = 1;
    [self.view addGestureRecognizer:tap];
}

- (void)tap:(UITapGestureRecognizer *)sender
{
    CGFloat red = arc4random() / (CGFloat)INT_MAX;
    CGFloat green = arc4random() / (CGFloat)INT_MAX;
    CGFloat blue = arc4random() / (CGFloat)INT_MAX;
    UIColor *color = [UIColor colorWithRed:red
                                     green:green
                                      blue:blue
                                     alpha:1.0];
    
    // create a basic animation
    CABasicAnimation *animation = [CABasicAnimation animation];
    animation.keyPath = @"backgroundColor";
    animation.toValue = (__bridge id)color.CGColor;
    animation.delegate = self;
    
    // apply animation to layer
    [self applyBasicAnimation:animation toLayer:self.suchLayer];
}

#pragma mark - Private Methods

- (void)applyBasicAnimation:(CABasicAnimation *)animation toLayer:(CALayer *)layer
{
    // set the from value (using presentation layer if available)
    animation.fromValue = [layer.presentationLayer ?: layer valueForKeyPath:animation.keyPath];
    
    // update the property in advance
    // note: this approach only works if `toValue != nil`
    [CATransaction begin];
    [CATransaction setDisableActions:YES];
    [layer setValue:animation.toValue forKeyPath:animation.keyPath];
    [CATransaction commit];
    
    // apply animation to layer
    [layer addAnimation:animation forKey:nil];
}

#pragma mark - CAAnimation Delegate

- (void)animationDidStop:(CABasicAnimation *)anim finished:(BOOL)flag
{
    [CATransaction begin];
    [CATransaction setDisableActions:YES];
    self.suchLayer.backgroundColor = (__bridge CGColorRef)anim.toValue;
    [CATransaction commit];
}

@end
