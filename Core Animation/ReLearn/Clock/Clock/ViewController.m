//
//  ViewController.m
//  Clock
//
//  Created by Vinh Nguyen on 22/09/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *hourHand;
@property (weak, nonatomic) IBOutlet UIImageView *minuteHand;
@property (weak, nonatomic) IBOutlet UIImageView *secondHand;
@property (nonatomic, weak) NSTimer *timer;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // adjust anchor points
    self.hourHand.layer.anchorPoint = CGPointMake(.5, .9);
    self.minuteHand.layer.anchorPoint = CGPointMake(.5, .9);
    self.secondHand.layer.anchorPoint = CGPointMake(.5, .9);
    
    // start timer
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.
                                                  target:self
                                                selector:@selector(tick)
                                                userInfo:nil
                                                 repeats:YES];
    
    // set initial hand positions
    [self tick];
}

#pragma mark - Private Methods

- (void)tick
{
    [self updateHandAnimated:YES];
}

- (void)updateHandAnimated:(BOOL)animated
{
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSUInteger units = NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSDate *now = [NSDate date];
    NSDateComponents *dateComponents = [calendar components:units fromDate:now];
    
    CGFloat hourAngle = (dateComponents.hour / 12.0) * M_PI * 2.0;
    CGFloat minuteAngle = (dateComponents.minute / 60.0) * M_PI * 2.0;
    CGFloat secondAngle = (dateComponents.second / 60.0) * M_PI * 2.0;
    
    // rotate hands
    [self setAngle:hourAngle forHand:self.hourHand animated:YES];
    [self setAngle:minuteAngle forHand:self.minuteHand animated:YES];
    [self setAngle:secondAngle forHand:self.secondHand animated:YES];
}

- (void)setAngle:(CGFloat)angle forHand:(UIView *)handView animated:(BOOL)animated
{
    CATransform3D transform = CATransform3DMakeRotation(angle, 0, 0, 1);
    
    if (animated) {
        CABasicAnimation *animation = [CABasicAnimation animation];
        animation.keyPath = @"transform";
        animation.toValue = [NSValue valueWithCATransform3D:transform];
        animation.duration = .5;
        animation.delegate = self;
        [animation setValue:handView forKey:@"handView"];
        [handView.layer addAnimation:animation forKey:nil];
    } else {
        // set transform directly
        handView.layer.transform = transform;
    }
}

- (void)animationDidStop:(CABasicAnimation *)anim finished:(BOOL)flag
{
    // set final position for hand view
    UIView *handView = [anim valueForKey:@"handView"];
    handView.layer.transform = [anim.toValue CATransform3DValue];
}

@end
