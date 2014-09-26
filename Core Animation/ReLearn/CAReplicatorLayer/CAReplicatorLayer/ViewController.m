//
//  ViewController.m
//  CAReplicatorLayer
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
    
    CAReplicatorLayer *replicator = [CAReplicatorLayer layer];
    replicator.frame = self.containerView.bounds;
    replicator.instanceCount = 10;
    
    CATransform3D transform = CATransform3DIdentity;
    transform = CATransform3DTranslate(transform, 0, 200, 0);
    transform = CATransform3DRotate(transform, M_PI/5.0, 0, 0, 1);
    transform = CATransform3DTranslate(transform, 0, -200, 0);
    replicator.instanceTransform = transform;
    replicator.instanceBlueOffset = -.1;
    replicator.instanceGreenOffset = -.1;
    
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(100, 100, 100, 100);
    layer.backgroundColor = [UIColor whiteColor].CGColor;
    [replicator addSublayer:layer];
    
    [self.containerView.layer addSublayer:replicator];
}

@end
