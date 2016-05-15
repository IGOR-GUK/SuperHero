//
//  NSError+Error.m
//  HEROES
//
//  Created by Igor Guk on 08.09.15.
//  Copyright © 2015 Igor Guk. All rights reserved.
//

#import "NSError+Error.h"

@implementation NSError (Error)

+ (NSError *)errorWithDescription:(NSString *)description reason:(NSString *)reason {
    
    NSDictionary *userInfo = @{ NSLocalizedDescriptionKey : description,
                                NSLocalizedFailureReasonErrorKey : reason };
    
    NSError *error = [NSError errorWithDomain:@"com.IgorGuk.heroes"
                                         code:3
                                     userInfo:userInfo];
    return error;
}

@end
