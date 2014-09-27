//
//  NXVScrollView.m
//  CAScrollLayer
//
//  Created by Vinh Nguyen on 27/09/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "NXVScrollView.h"
@import QuartzCore;

@implementation NXVScrollView

+ (Class)layerClass
{
    return [CAScrollLayer class]; // make sure we are using CAScrollLayer class, not just CALayer
}

- (void)setUp
{
    // enable clipping
    self.layer.masksToBounds = YES;
    
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(pan:)];
    [self addGestureRecognizer:panGesture];
}

#pragma mark - init

- (instancetype)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame])) {
        [self setUp];
    }
    
    return self;
}

- (void)awakeFromNib
{
    [self setUp];
}

#pragma mark - Gesture

- (void)pan:(UIPanGestureRecognizer *)gesture
{
    // get thme offset by subtracing the pan gesture
    // translation from the current bounds origin
    CGPoint offset = self.bounds.origin;
    offset.x -= [gesture translationInView:self].x;
    offset.y -= [gesture translationInView:self].y;
    
    // scroll the layer
    [(CAScrollLayer *)self.layer scrollToPoint:offset];
    
    // reset the pan gesture translation
    [gesture setTranslation:CGPointZero inView:self];
}


@end
