//
//  IGTableCell.h
//  HEROES
//
//  Created by Igor Guk on 19.09.15.
//  Copyright © 2015 Igor Guk. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IGHero;

@interface IGTableCell : UITableViewCell

- (void)setupWithHero:(IGHero *)hero;

@end
