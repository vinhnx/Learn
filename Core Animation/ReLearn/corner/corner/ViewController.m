//
//  ViewController.m
//  corner
//
//  Created by Vinh Nguyen on 22/09/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *layerView1;
@property (weak, nonatomic) IBOutlet UIView *layerView2;
@property (weak, nonatomic) IBOutlet UIView *shadowView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.layerView1.layer.cornerRadius = 20;
    self.layerView1.layer.borderWidth = 5;
    self.layerView1.layer.shadowOpacity = .5;
    self.layerView1.layer.shadowOffset = CGSizeMake(0, 5);
    self.layerView1.layer.shadowRadius = 5;
    
    self.layerView2.layer.cornerRadius = 20;
    self.layerView2.layer.borderWidth = 5;
    self.shadowView.layer.shadowOpacity = .5;
    self.shadowView.layer.shadowOffset = CGSizeMake(0, 5);
    self.shadowView.layer.shadowRadius = 5;
    self.layerView2.layer.masksToBounds = YES;
}

@end
