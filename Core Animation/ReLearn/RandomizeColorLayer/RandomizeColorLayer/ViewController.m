//
//  ViewController.m
//  RandomizeColorLayer
//
//  Created by Vinh Nguyen on 28/09/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "ViewController.h"
@import QuartzCore;

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *layerView;
@property (nonatomic, weak) CALayer *colorLayer;
- (IBAction)changeColor:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.colorLayer = [CALayer layer];
    self.colorLayer.frame = CGRectMake(10, 10,
                                       100, 100);
    self.colorLayer.backgroundColor = [UIColor cyanColor].CGColor;
    [self.layerView.layer addSublayer:self.colorLayer];
}

- (IBAction)changeColor:(id)sender
{
    [CATransaction begin];
    [CATransaction setAnimationDuration:1.0];
    [CATransaction setCompletionBlock:^{
        CGAffineTransform transform = self.colorLayer.affineTransform;
        transform = CGAffineTransformRotate(transform, M_PI_2);
        self.colorLayer.affineTransform = transform;
    }];
    CGFloat red = arc4random() / (CGFloat)INT_MAX;
    CGFloat green = arc4random() / (CGFloat)INT_MAX;
    CGFloat blue = arc4random() / (CGFloat)INT_MAX;
    self.colorLayer.backgroundColor = [UIColor colorWithRed:red
                                                      green:green
                                                       blue:blue
                                                      alpha:1.0].CGColor;
    
    [CATransaction commit];
}

@end
