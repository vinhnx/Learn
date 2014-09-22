//
//  ViewController.m
//  ShadowPath
//
//  Created by Vinh Nguyen on 22/09/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *coneView1;
@property (weak, nonatomic) IBOutlet UIImageView *coneView2;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.coneView1.layer.shadowOpacity = .5;
    self.coneView2.layer.shadowOpacity = .5;
    
    
    /// **NOTE: for simple shape, using CGPath is fine. But when we have more complexe shape
    /// like rounded rectangle, should use UIBazierPath class, which is an Objective-C wrapper
    /// around CGPath by UIKit
    
    // create square shadow
    CGMutablePathRef squarePath = CGPathCreateMutable(); // create a square mutable graphics path context ref
    CGPathAddRect(squarePath, NULL, self.coneView1.bounds); // append square rect to path ref
    self.coneView1.layer.shadowPath = squarePath; // shadowPath shape of shadow layer
    CGPathRelease(squarePath); // release path context
    
    // create circular/ellipse shadow
    CGMutablePathRef circularPath = CGPathCreateMutable(); // create a circular mutable graphics path context ref
    CGPathAddEllipseInRect(circularPath, NULL, self.coneView2.bounds);
    self.coneView2.layer.shadowPath = circularPath;
    CGPathRelease(circularPath);
}

@end
