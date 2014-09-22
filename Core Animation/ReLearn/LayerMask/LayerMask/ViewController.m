//
//  ViewController.m
//  LayerMask
//
//  Created by Vinh Nguyen on 22/09/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *houseImageView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CALayer *maskLayer = [CALayer layer];
    maskLayer.frame = self.houseImageView.bounds;
    maskLayer.contents = (__bridge id)[UIImage imageNamed:@"Cone"].CGImage;
    
    self.houseImageView.layer.mask = maskLayer;
}

@end
