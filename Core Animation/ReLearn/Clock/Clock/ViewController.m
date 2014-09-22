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
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSUInteger units = NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSDate *now = [NSDate date];
    NSDateComponents *dateComponents = [calendar components:units fromDate:now];
    
    CGFloat hourAngle = (dateComponents.hour / 12.0) * M_PI * 2.0;
    CGFloat minuteAngle = (dateComponents.minute / 60.0) * M_PI * 2.0;
    CGFloat secondAngle = (dateComponents.second / 60.0) * M_PI * 2.0;
    
    // rotate hands
    [UIView animateWithDuration:.15 animations:^{
        self.hourHand.transform = CGAffineTransformMakeRotation(hourAngle);
        self.minuteHand.transform = CGAffineTransformMakeRotation(minuteAngle);
        self.secondHand.transform = CGAffineTransformMakeRotation(secondAngle);
    }];
}


@end
