//
//  ViewController.m
//  LayerTest2.4
//
//  Created by Vinh Nguyen on 22/09/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *button1;
@property (weak, nonatomic) IBOutlet UIView *button2;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImage *buttonImage = [UIImage imageNamed:@"Button"];
    
    // button1
    [self addStretchableImage:buttonImage
            withContentCenter:CGRectMake(.25, .25, .5, .5)
                      toLayer:self.button1.layer];
    
    // button2
    [self addStretchableImage:buttonImage
            withContentCenter:CGRectMake(.25, .25, .5, .5)
                      toLayer:self.button2.layer];
}

#pragma mark - Private Method

- (void)addStretchableImage:(UIImage *)image withContentCenter:(CGRect)centerRect toLayer:(CALayer *)layer
{
    layer.contents = (__bridge id)image.CGImage; // set content with an CGImage
    layer.contentsCenter = centerRect;
}

@end
