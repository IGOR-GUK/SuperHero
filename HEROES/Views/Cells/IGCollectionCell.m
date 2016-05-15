//
//  IGCollectionCell.m
//  HEROES
//
//  Created by Igor Guk on 19.09.15.
//  Copyright © 2015 Igor Guk. All rights reserved.
//

#import "IGCollectionCell.h"
#import "IGHero.h"

@interface IGCollectionCell ()

@property (nonatomic, weak) IBOutlet UIImageView *imageView;

@end

@implementation IGCollectionCell

- (void)setupWithHero:(IGHero *)hero {
    self.imageView.image = [UIImage imageNamed:hero.avatarImagePath];
}

@end
