//
//  ViewController.m
//  CALayerDelegate_test
//
//  Created by Vinh Nguyen on 22/09/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *layerView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // create layer
    CALayer *yellowLayer = [CALayer layer];
    yellowLayer.backgroundColor = [UIColor yellowColor].CGColor;
    yellowLayer.frame = CGRectMake(0, 0, 50, 50);
    yellowLayer.delegate = self; // set controller as layer delegate
    yellowLayer.contentsScale = [UIScreen mainScreen].scale; // ensure the layer backing image uses correct scale
    [self.layerView.layer addSublayer:yellowLayer];
    
    // force layer to redraw
    [yellowLayer display];
}

#pragma mark - CALayerDelegate

- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx
{
    // draw a thick red circle
    CGContextSetLineWidth(ctx, 8.f); // set line width
    CGContextSetStrokeColorWithColor(ctx, [UIColor blueColor].CGColor); // set stroke color
    CGContextStrokeEllipseInRect(ctx, layer.bounds); // wrap stroke ellipse in rect
}


@end
