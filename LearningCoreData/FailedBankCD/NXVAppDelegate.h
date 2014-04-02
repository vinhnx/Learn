//
//  NXVAppDelegate.h
//  FailedBankCD
//
//  Created by Vinh Nguyen on 3/12/14.
//  Copyright (c) 2014 Vinh Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString *const kFailedBankInfo;
extern NSString *const kFailedBankDetails;

@interface NXVAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
