//
//  NSError+Error.h
//  HEROES
//
//  Created by Igor Guk on 08.09.15.
//  Copyright © 2015 Igor Guk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSError (Error)

+ (NSError *)errorWithDescription:(NSString *)description reason:(NSString *)reason;

@end
