//
//  ViewController.m
//  AVPlayerLayer
//
//  Created by Vinh Nguyen on 27/09/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "ViewController.h"
@import AVFoundation;
@import QuartzCore;

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIView *playerView = [[UIView alloc] initWithFrame:CGRectMake(0,
                                                                  0,
                                                                  CGRectGetWidth(self.view.bounds),
                                                                  CGRectGetHeight(self.view.bounds))];
    [self.view addSubview:playerView];

    NSURL *videoURL = [[NSBundle mainBundle] URLForResource:@"Ship" withExtension:@"mp4"];
    AVPlayer *player = [AVPlayer playerWithURL:videoURL];
    AVPlayerLayer *playerLayer = [AVPlayerLayer playerLayerWithPlayer:player];
    playerLayer.frame = playerView.bounds;

    [player play];
    [playerView.layer addSublayer:playerLayer];
}

@end
