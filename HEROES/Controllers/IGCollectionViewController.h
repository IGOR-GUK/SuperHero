//
//  IGCollectionViewController.h
//  HEROES
//
//  Created by Igor Guk on 19.09.15.
//  Copyright © 2015 Igor Guk. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "IGHeroDataSource.h"

@interface IGCollectionViewController : UICollectionViewController

- (IGHeroDataSource *)dataSource;

@end
