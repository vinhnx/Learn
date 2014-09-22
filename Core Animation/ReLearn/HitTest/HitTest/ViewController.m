//
//  ViewController.m
//  HitTest
//
//  Created by Vinh Nguyen on 22/09/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIView *layerView;
@property (nonatomic, weak) CALayer *orangeLayer;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
 
    self.layerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    self.layerView.center = self.view.center;
    self.layerView.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:self.layerView];
    
    // create sublayer
    self.orangeLayer = [CALayer layer];
    self.orangeLayer.frame = CGRectMake(0, 0, 50, 50);
    self.orangeLayer.backgroundColor = [UIColor orangeColor].CGColor;
    self.orangeLayer.zPosition = 1;
    [self.layerView.layer addSublayer:self.orangeLayer];
}

#pragma mark - Touch Events

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    // get touch point relative to main view
    CGPoint touchPoint = [[touches anyObject] locationInView:self.view];
    
    // get touched layer
    CALayer *touchedLayer = [self.layerView.layer hitTest:touchPoint];
    if (touchedLayer == self.layerView.layer) {
        NSLog(@"touched layerview");
    }
    else if (touchedLayer == self.orangeLayer) {
        NSLog(@"touched orrage layer");
    }
}

@end
