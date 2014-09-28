//
//  ViewController.m
//  LayerPosition
//
//  Created by Vinh Nguyen on 28/09/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) CALayer *colorLayer;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.colorLayer = [CALayer layer];
    self.colorLayer.frame = CGRectMake(0, 0, 100, 100);
    self.colorLayer.position = CGPointMake(CGRectGetWidth(self.view.bounds) / 2,
                                           CGRectGetHeight(self.view.bounds) / 2);
    self.colorLayer.backgroundColor = [UIColor cyanColor].CGColor;
    [self.view.layer addSublayer:self.colorLayer];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    CGPoint touchPoint = [[touches anyObject] locationInView:self.view];
    
    // make sure we've tapped the moving layer
    if ([self.colorLayer.presentationLayer hitTest:touchPoint]) {
        CGFloat red = arc4random() / (CGFloat)INT_MAX;
        CGFloat green = arc4random() / (CGFloat)INT_MAX;
        CGFloat blue = arc4random() / (CGFloat)INT_MAX;
        self.colorLayer.backgroundColor = [UIColor colorWithRed:red
                                                          green:green
                                                           blue:blue
                                                          alpha:1.0].CGColor;
    }
    else {
        // otherwise, slowly move the layer to new position
        [CATransaction begin];
        [CATransaction setAnimationDuration:.3];
        self.colorLayer.position = touchPoint;
        [CATransaction commit];
    }
}

@end
