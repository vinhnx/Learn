//
//  NXVView.m
//  CGDemo
//
//  Created by Vinh Nguyen on 26/10/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "NXVView.h"

@implementation NXVView

- (void)drawRect:(CGRect)rect
{
    // first, create a graphics context
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [UIColor cyanColor].CGColor);
    CGContextFillRect(context, CGRectMake(20, 20, 100, 100));
}

@end
