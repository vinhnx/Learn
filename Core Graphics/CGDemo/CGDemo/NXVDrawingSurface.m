//
//  NXVDrawingSurface.m
//  CGDemo
//
//  Created by Vinh Nguyen on 26/10/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "NXVDrawingSurface.h"

@implementation NXVDrawingSurface

- (void)drawRect:(CGRect)rect
{
    // Drawing code
    
    /// shapes
//    UIBezierPath *squarePath = [UIBezierPath bezierPathWithRect:CGRectMake(40, 40, 100, 100)];
//    UIBezierPath *ovalPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(40, 40, 200, 200)];
//    UIBezierPath *roundedPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(40, 40, 100, 100) cornerRadius:10];
//    [[UIColor cyanColor] setFill];
//    [roundedPath fill];
//    roundedPath.lineWidth = 3;
//    [[UIColor orangeColor] setStroke];
//    [roundedPath stroke];
    
    
    /// paths
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(50, 50)];
    [path addLineToPoint:CGPointMake(150, 50)];
    [path addLineToPoint:CGPointMake(50, 250)];
//    [path addCurveToPoint:CGPointMake(10, 250) controlPoint1:CGPointMake(100, 200) controlPoint2:CGPointMake(200, 100)];
    [path addQuadCurveToPoint:CGPointMake(10, 200) controlPoint:CGPointMake(50, 100)];
    [path closePath];
    
    [[UIColor lightGrayColor] setFill];
    [path fill];
    [[UIColor yellowColor] setStroke];
    path.lineWidth = 3.0f;
//    path.lineJoinStyle = kCGLineJoinMiter;
    [path stroke];
}

@end
