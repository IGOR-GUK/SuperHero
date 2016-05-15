//
//  IGAddHeroesViewController.m
//  HEROES
//
//  Created by Igor Guk on 19.09.15.
//  Copyright © 2015 Igor Guk. All rights reserved.
//

#import "IGAddHeroesViewController.h"
#import "IGValidator.h"
#import "IGHeroDataSource.h"

@interface IGAddHeroesViewController () <UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UITextField *addNameField;
@property (nonatomic, strong) IGValidator *validator;
@property (nonatomic, strong) IGHeroDataSource *dataSource;

@end

@implementation IGAddHeroesViewController

- (void)setDataSource:(IGHeroDataSource *)dataSource {
    _dataSource = dataSource;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.validator = [IGValidator new];
    [self.addNameField becomeFirstResponder];
}

#pragma mark - Methods

- (void)validationInputText {
    NSError *error = nil;
    
    BOOL validationResult = [self.validator isValidModelTitle:self.addNameField.text error:&error];
    if (!validationResult) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:[error localizedDescription]
                                                            message:[error localizedFailureReason]
                                                           delegate:nil
                                                  cancelButtonTitle:NSLocalizedString(@"OK", @"")
                                                  otherButtonTitles:nil];
        [alertView show];
    } else {
        [self saveData];
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (void)saveData {
    NSInteger randomValue = arc4random_uniform(9) + 1;
    NSString *randomImagePath = [NSString stringWithFormat:@"%ld.png", (long)randomValue];
    
    [self.dataSource addModelWithImagePath:randomImagePath name:self.addNameField.text];
}

#pragma mark - Actions

- (IBAction)actionSaveHero:(UIBarButtonItem *)sender {
    [self validationInputText];
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self validationInputText];
    return NO;
}

@end
