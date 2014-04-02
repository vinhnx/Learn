//
//  PersonSpec.m
//  LearningTDDBDD
//
//  Created by Vinh Nguyen on 3/6/14.
//  Copyright 2014 Vinh Nguyen. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "Person.h"

SPEC_BEGIN(PersonSpec)

describe(@"input full name", ^{

    __block Person *person;
    beforeEach(^{

        person = [Person new];
        person.firstName = @"Vinh";
        person.lastName = @"Nguyen";
    });


    describe(@"should be equal to", ^{

        __block NSString *fullName;
        beforeEach(^{

            fullName = [person getFullname];
        });

        it(@"the return full name", ^{

            [[fullName should] equal:@"Vinh Nguyen"];
        });
    });
});

SPEC_END
