//
//  ETPPerson.m
//  LearningTDDBDD
//
//  Created by Vinh Nguyen on 3/6/14.
//  Copyright (c) 2014 Vinh Nguyen. All rights reserved.
//

#import "Person.h"

@implementation Person

- (NSString *)getFullname
{
    return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
}

@end
