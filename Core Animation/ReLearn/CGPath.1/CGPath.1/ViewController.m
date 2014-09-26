//
//  ViewController.m
//  CGPath.1
//
//  Created by Vinh Nguyen on 26/09/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "ViewController.h"
@import QuartzCore;
@import CoreText;

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *containerView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // create path
//    UIBezierPath *path = [[UIBezierPath alloc] init];
//    [path moveToPoint:CGPointMake(175, 100)];
//    [path addArcWithCenter:CGPointMake(150, 100)
//                    radius:25
//                startAngle:0
//                  endAngle:M_PI*2
//                 clockwise:YES];
//    [path moveToPoint:CGPointMake(150, 125)];
//    [path addLineToPoint:CGPointMake(150, 175)];
//    [path addLineToPoint:CGPointMake(125, 225)];
//    [path moveToPoint:CGPointMake(150, 175)];
//    [path addLineToPoint:CGPointMake(175, 225)];
//    [path moveToPoint:CGPointMake(100, 150)];
//    [path addLineToPoint:CGPointMake(200, 150)];
    
    
    
//    CGRect rect = CGRectMake(50, 50, 100, 100);
//    CGSize radii = CGSizeMake(20, 20);
//    UIRectCorner corners = UIRectCornerTopRight | UIRectCornerTopLeft
//    | UIRectCornerBottomRight | UIRectCornerBottomLeft;
//    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect
//                                               byRoundingCorners:corners
//                                                     cornerRadii:radii];
//    
//    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
//    shapeLayer.strokeColor = [UIColor whiteColor].CGColor;
//    shapeLayer.fillColor = [UIColor clearColor].CGColor;
//    shapeLayer.lineWidth = 2;
//    shapeLayer.lineJoin = kCALineJoinRound;
//    shapeLayer.lineCap = kCALineCapRound;
//    shapeLayer.path = path.CGPath;
//    
//    [self.containerView.layer addSublayer:shapeLayer];

    
    CATextLayer *textLayer = [CATextLayer layer];
    textLayer.frame = self.containerView.bounds;
    [self.containerView.layer addSublayer:textLayer];
    
    textLayer.foregroundColor = [UIColor whiteColor].CGColor;
    textLayer.alignmentMode = kCAAlignmentJustified;
    textLayer.wrapped = YES;
    
    UIFont *font = [UIFont systemFontOfSize:15];
    
    NSString *text = @"Lorem ipsum dolor sit amet, consectetur adipiscing \
        elit. Quisque massa arcu, eleifend vel varius in, facilisis pulvinar \
        leo. Nunc quis nunc at mauris pharetra condimentum ut ac neque. Nunc \
        elementum, libero ut porttitor dictum, diam odio congue lacus, vel \
        fringilla sapien diam at purus. Etiam suscipit pretium nunc sit amet \
        lobortis";
    
    
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:text];
    
    CFStringRef fontName = (__bridge CFStringRef)font.fontName;
    CGFloat fontSize = font.pointSize;
    CTFontRef fontRef = CTFontCreateWithName(fontName, fontSize, NULL);
    
    NSDictionary *attributes = @{
                                 (__bridge id)kCTForegroundColorAttributeName : (__bridge id)[UIColor whiteColor].CGColor,
                                 (__bridge id)kCTFontAttributeName : (__bridge id)fontRef
                                 };
    
    [string setAttributes:attributes range:NSMakeRange(0, [text length])];
    attributes = @{
                   (__bridge id)kCTForegroundColorAttributeName :  (__bridge id)[UIColor redColor].CGColor,
                   (__bridge id)kCTUnderlineStyleAttributeName : @(kCTUnderlineStyleSingle),
                   (__bridge id)kCTFontAttributeName : (__bridge id)fontRef
                   };
    [string setAttributes:attributes range:NSMakeRange(6, 5)];
    
    // release the CTFont we created earlier
    CFRelease(fontRef);
    
    textLayer.string = string;
    textLayer.contentsScale = [UIScreen mainScreen].scale;
}

@end
