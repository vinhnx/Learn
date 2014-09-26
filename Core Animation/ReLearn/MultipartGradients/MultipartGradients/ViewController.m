//
//  ViewController.m
//  MultipartGradients
//
//  Created by Vinh Nguyen on 26/09/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *containerView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = self.containerView.bounds;
    gradientLayer.colors = @[
                             (__bridge id)[UIColor cyanColor].CGColor,
                             (__bridge id)[UIColor blueColor].CGColor,
                             (__bridge id)[UIColor redColor].CGColor
                             ];
    gradientLayer.locations = @[@0, @.25, @.5];
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(1, 1);
    [self.containerView.layer addSublayer:gradientLayer];
}

@end
