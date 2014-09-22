//
//  ViewController.m
//  LayerTest
//
//  Created by Vinh Nguyen on 22/09/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *anchorView;
@property (weak, nonatomic) IBOutlet UIView *iglooView;
@property (weak, nonatomic) IBOutlet UIView *shipView;
@property (weak, nonatomic) IBOutlet UIView *coneView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // sprite
    UIImage *spriteImage = [UIImage imageNamed:@"Sprites"];
    
    // igloo, nha bang
    [self addSpriteImage:spriteImage
         withContentRect:CGRectMake(0, 0, .5, .5)
                 toLayer:self.iglooView.layer];
    
    // cone, do chan duong
    [self addSpriteImage:spriteImage
         withContentRect:CGRectMake(.5, 0, .5, .5)
                 toLayer:self.coneView.layer];
    
    // anchor, mo neo
    [self addSpriteImage:spriteImage
         withContentRect:CGRectMake(0, .5, .5, .5)
                 toLayer:self.anchorView.layer];
    
    // ship
    [self addSpriteImage:spriteImage
         withContentRect:CGRectMake(.5, .5, .5, .5)
                 toLayer:self.shipView.layer];
}

#pragma mark - Private Methods

- (void)addSpriteImage:(UIImage *)image withContentRect:(CGRect)rect toLayer:(CALayer *)layer
{
    layer.contents = (__bridge id)image.CGImage; // set image
    layer.contentsGravity = kCAGravityResizeAspect; // scale contents to fit
    layer.contentsRect = rect; // set contentsRect {1.0,1.0,1.0,1.0}:max width & max height is 1.0
}

@end
