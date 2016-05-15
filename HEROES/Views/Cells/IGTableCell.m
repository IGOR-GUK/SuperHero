//
//  IGTableCell.m
//  HEROES
//
//  Created by Igor Guk on 19.09.15.
//  Copyright © 2015 Igor Guk. All rights reserved.
//

#import "IGTableCell.h"
#import "IGHero.h"

@interface IGTableCell ()

@property (nonatomic, weak) IBOutlet UIImageView *avatarImageView;
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;

@end

@implementation IGTableCell

- (void)setupWithHero:(IGHero *)hero {
    self.avatarImageView.image = [UIImage imageNamed:hero.avatarImagePath];
    self.nameLabel.text = hero.name;
}

@end
