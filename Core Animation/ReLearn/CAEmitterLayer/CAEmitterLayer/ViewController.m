//
//  ViewController.m
//  CAEmitterLayer
//
//  Created by Vinh Nguyen on 27/09/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "ViewController.h"
@import QuartzCore;

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *containerView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CAEmitterLayer *emitterLayer = [CAEmitterLayer layer];
    emitterLayer.frame = self.containerView.bounds;
    emitterLayer.renderMode = kCAEmitterLayerAdditive;
    emitterLayer.emitterPosition = CGPointMake(emitterLayer.frame.size.width / 2.0, emitterLayer.frame.size.height / 2.0);
    
    // particle
    CAEmitterCell *emitterCell = [[CAEmitterCell alloc] init];
    emitterCell.contents = (__bridge id)[UIImage imageNamed:@"Spark"].CGImage;
    emitterCell.birthRate = 150;
    emitterCell.lifetime = 5.0;
    emitterCell.color = [UIColor colorWithRed:0.741 green:0.268 blue:1.000 alpha:1.000].CGColor;
    emitterCell.alphaSpeed = -.4;
    emitterCell.velocity = 50;
    emitterCell.velocityRange = 50;
    emitterCell.emissionRange = M_PI * 2.0;
    emitterLayer.emitterCells = @[emitterCell];
    
    [self.containerView.layer addSublayer:emitterLayer];
}

@end
