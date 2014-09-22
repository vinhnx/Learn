//
//  ViewController.m
//  Filter
//
//  Created by Vinh Nguyen on 22/09/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *digitViews;
@property (nonatomic, weak) NSTimer *timer;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImage *digitsImage = [UIImage imageNamed:@"Digits"];
    for (UIView *view in self.digitViews) {
        view.layer.contents = (__bridge id)digitsImage.CGImage;
        view.layer.contentsRect = CGRectMake(0, 0, .1, 1);
        view.layer.contentsGravity = kCAGravityResizeAspect;
        
        // use nearest-neighbor scaling
        view.layer.magnificationFilter = kCAFilterNearest;
    }
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1
                                                  target:self
                                                selector:@selector(tick)
                                                userInfo:nil
                                                 repeats:YES];
    
    [self tick];
}

#pragma mark - Private Method

- (void)setDigit:(NSInteger)digit forView:(UIView *)view
{
    // adjust contentsRect to select correct digit
    view.layer.contentsRect = CGRectMake(digit * .1, 0, .1, 1);
}

- (void)tick
{
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSUInteger calendarUnit = NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSDateComponents *dateComponents = [calendar components:calendarUnit fromDate:[NSDate date]];
    
    NSInteger dHour = dateComponents.hour;
    [self setDigit:dHour / 10 forView:self.digitViews[0]];
    [self setDigit:dHour * 10 forView:self.digitViews[1]];
    
    NSInteger dMinute = dateComponents.minute;
    [self setDigit:dMinute / 10 forView:self.digitViews[2]];
    [self setDigit:dMinute * 10 forView:self.digitViews[3]];
    
    NSInteger dSecond = dateComponents.second;
    [self setDigit:dSecond / 10 forView:self.digitViews[4]];
    [self setDigit:dSecond * 10 forView:self.digitViews[5]];
}


@end
