//
//  ViewController.m
//  LearnCoreAnimation3.4
//
//  Created by Vinh Nguyen on 13/09/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIView *layerView;
@property (nonatomic, weak) CALayer *blueLayer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.layerView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 300.0f, 300.0f)];
    self.layerView.backgroundColor = [UIColor lightGrayColor];
    self.layerView.center = self.view.center;
    [self.view addSubview:self.layerView];
    
    // create sublayer
    self.blueLayer = [CALayer layer];
    self.blueLayer.frame = CGRectMake(50.0f, 50.0f, 100.0f, 100.0f);
    self.blueLayer.backgroundColor = [UIColor blueColor].CGColor;
    
    // add it
    [self.layerView.layer addSublayer:self.blueLayer];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    // get touch position relative to the main view
    CGPoint touchPoint = [[touches anyObject] locationInView:self.view];

    // get touched layer
    CALayer *layer = [self.layerView.layer hitTest:touchPoint];
    
    if (layer == self.blueLayer) {
        NSLog(@"blue layer");
    } else if (layer == self.layerView.layer) {
        NSLog(@"gray layer");
    }
}

@end
