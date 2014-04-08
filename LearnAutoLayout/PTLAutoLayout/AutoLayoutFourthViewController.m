//
//  AutoLayoutFourthViewController.m
//  NXVLAutoLayout
//
//  Created by Vinh Nguyen on 4/8/14.
//  Copyright (c) 2014 Vinh Nguyen. All rights reserved.
//

#import "AutoLayoutFourthViewController.h"

@interface AutoLayoutFourthViewController ()
@property (weak, nonatomic) IBOutlet UIView *bottomView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomViewHeightConstraints;
@end

@implementation AutoLayoutFourthViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    if (UIInterfaceOrientationIsLandscape(toInterfaceOrientation)) { // if we are about to rotate to landscape
        self.bottomViewHeightConstraints.constant = 100; // reduce bottom view height constraint of bottom view to 100pts
    }
    else {
        self.bottomViewHeightConstraints.constant = 433;
    }

    [self.bottomView setNeedsUpdateConstraints]; // bottomView's constraints need to be updated
}

@end
