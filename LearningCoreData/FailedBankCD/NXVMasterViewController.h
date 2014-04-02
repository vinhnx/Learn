//
//  NXVMasterViewController.h
//  FailedBankCD
//
//  Created by Vinh Nguyen on 3/12/14.
//  Copyright (c) 2014 Vinh Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NXVMasterViewController : UITableViewController
@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, strong) NSArray *failedBankInfos;
@end
