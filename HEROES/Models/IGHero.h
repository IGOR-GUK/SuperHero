//
//  IGHero.h
//  HEROES
//
//  Created by Igor Guk on 19.09.15.
//  Copyright © 2015 Igor Guk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface IGHero : NSManagedObject

@property (nonatomic, retain) NSString *avatarImagePath;
@property (nonatomic, retain) NSString *name;

@end
