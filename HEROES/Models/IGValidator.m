//
//  IGValidator.m
//  HEROES
//
//  Created by Igor Guk on 19.09.15.
//  Copyright © 2015 Igor Guk. All rights reserved.
//

#import "IGValidator.h"
#import "NSError+Error.h"

static NSInteger const kMinHeroModelTitleLength = 3;

@implementation IGValidator

- (BOOL)isValidModelTitle:(NSString *)title error:(NSError **)error {
    
    if (title.length < kMinHeroModelTitleLength) {
        if (error != nil) {
            NSString *description = NSLocalizedString(@"Input Validation Failed", @"");
            NSString *reason = NSLocalizedString(@"Number of characters is less than three", @"");
            
            *error = [NSError errorWithDescription:description reason:reason];
        }
        return NO;
    }
    return YES;
}

@end
