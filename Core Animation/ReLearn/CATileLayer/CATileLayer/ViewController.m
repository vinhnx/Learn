//
//  ViewController.m
//  CATileLayer
//
//  Created by Vinh Nguyen on 27/09/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "ViewController.h"
@import QuartzCore;

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CATiledLayer *tileLayer = [CATiledLayer layer];
    tileLayer.frame = CGRectMake(0, 0, 2048, 2048);
    tileLayer.delegate = self;
    
    // configure the scroll view
    self.scrollView.contentSize = tileLayer.frame.size;
    
    [tileLayer setNeedsDisplay]; // draw layer
    
    [self.scrollView.layer addSublayer:tileLayer];
}

#pragma mark - CATiledLayer delegate

- (void)drawLayer:(CATiledLayer *)layer inContext:(CGContextRef)ctx
{
    CGRect bounds = CGContextGetClipBoundingBox(ctx);
    NSInteger x = floor(bounds.origin.x / layer.tileSize.width);
    NSInteger y = floor(bounds.origin.y / layer.tileSize.height);
    
    NSString *imageName = [NSString stringWithFormat:@"Snowman_%02li_%02li", (long)x, (long)y];
    NSString *imageFilePath = [[NSBundle mainBundle] pathForResource:imageName ofType:@"jpg"];
    UIImage *tileImage = [UIImage imageWithContentsOfFile:imageFilePath];
    
    // draw tile
    UIGraphicsPushContext(ctx);
    [tileImage drawInRect:bounds];
    UIGraphicsPopContext();
}


@end
