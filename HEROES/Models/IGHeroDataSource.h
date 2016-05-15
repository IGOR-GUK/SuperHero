//
//  IGHeroDataSource.h
//  HEROES
//
//  Created by Igor Guk on 19.09.15.
//  Copyright © 2015 Igor Guk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class IGHero;

@interface IGHeroDataSource : NSObject

- (NSInteger)heroesCount;
- (instancetype)initWithDelegate:(id <NSFetchedResultsControllerDelegate>)delegate;
- (void)addModelWithImagePath:(NSString *)imagePath name:(NSString *)name;
- (void)deleteModelAtIndex:(NSIndexPath *)index;
- (IGHero *)modelAtIndexPath:(NSIndexPath *)indexPath;
- (void)saveContext;

@end
