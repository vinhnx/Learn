//
//  ViewController.m
//  GroupAlpha
//
//  Created by Vinh Nguyen on 22/09/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *containerView;
@end

@implementation ViewController

- (UIButton *)customButton
{
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
    button.backgroundColor = [UIColor whiteColor];
    button.layer.cornerRadius = 5;
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
    label.text = NSLocalizedString(@"Hello World", nil);
    label.textAlignment = NSTextAlignmentCenter;
    [button addSubview:label];
    
    return button;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *button1 = [self customButton];
    button1.center = CGPointMake(50, 150);
    [self.containerView addSubview:button1];
    
    UIButton *button2 = [self customButton];
    button2.center = CGPointMake(200, 150);
    button2.alpha = .5;
    [self.containerView addSubview:button2];
    
    // enable rasterization for the translucent button
//    button2.layer.shouldRasterize = YES;
//    button2.layer.rasterizationScale = [UIScreen mainScreen].scale;
}

@end
