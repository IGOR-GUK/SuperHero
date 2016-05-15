//
//  IGValidator.h
//  HEROES
//
//  Created by Igor Guk on 19.09.15.
//  Copyright © 2015 Igor Guk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IGValidator : NSObject

- (BOOL)isValidModelTitle:(NSString *)title error:(NSError **)error;

@end
