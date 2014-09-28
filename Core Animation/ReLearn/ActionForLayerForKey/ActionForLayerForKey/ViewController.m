//
//  ViewController.m
//  ActionForLayerForKey
//
//  Created by Vinh Nguyen on 28/09/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIView *myView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.myView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 200, 200)];
    self.myView.layer.backgroundColor = [UIColor greenColor].CGColor;
    [self.view addSubview:self.myView];
    
    // test layer action when outside of animation block
    NSLog(@"Outside: %@", [self.myView actionForLayer:self.myView.layer forKey:@"backgroundColor"]);
    [UIView beginAnimations:nil context:nil];
    // test layer action when inside of animation block
    NSLog(@"Inside: %@", [self.myView actionForLayer:self.myView.layer forKey:@"backgroundColor"]);
    [UIView commitAnimations];
}

@end
