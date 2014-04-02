//
//  ETPPerson.h
//  LearningTDDBDD
//
//  Created by Vinh Nguyen on 3/6/14.
//  Copyright (c) 2014 Vinh Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;

- (NSString *)getFullname;
@end
