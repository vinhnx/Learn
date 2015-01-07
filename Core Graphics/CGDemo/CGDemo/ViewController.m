//
//  ViewController.m
//  CGDemo
//
//  Created by Vinh Nguyen on 26/10/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "ViewController.h"
#import "NXVView.h"
#import "NXVDrawingSurface.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    NXVView *leView = [[NXVView alloc] initWithFrame:CGRectMake(0, 0,
//                                                                CGRectGetMaxX(self.view.bounds),
//                                                                CGRectGetMaxY(self.view.bounds))];
//    [self.view addSubview:leView];
    
    NXVDrawingSurface *drawingSurface = [[NXVDrawingSurface alloc] initWithFrame:CGRectMake(0, 0,
                                                                                            300, 300)];
    [self.view addSubview:drawingSurface];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
