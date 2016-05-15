//
//  IGTableViewController.h
//  HEROES
//
//  Created by Igor Guk on 19.09.15.
//  Copyright © 2015 Igor Guk. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IGHeroDataSource;

@interface IGTableViewController : UITableViewController

- (IGHeroDataSource *)dataSource;

@end
