//
//  IGContainerViewController.m
//  HEROES
//
//  Created by Igor Guk on 19.09.15.
//  Copyright © 2015 Igor Guk. All rights reserved.
//

#import "IGContainerViewController.h"
#import "IGTableViewController.h"
#import "IGCollectionViewController.h"
#import "IGAddHeroesViewController.h"

#define ANIMATION_DURATION_IN_SECONDS 0.25

static NSString * const IGTableControllerStoryboardID = @"IGTableViewController";
static NSString * const IGCollectionControllerStoryboardID = @"IGCollectionViewController";

@interface IGContainerViewController ()

@property (nonatomic, assign) BOOL switchFlagViewController;
@property (nonatomic, strong) IGTableViewController *tableVC;
@property (nonatomic, strong) IGCollectionViewController *collectionVC;

@end

@implementation IGContainerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.switchFlagViewController = YES;
    
    self.tableVC = [self.storyboard instantiateViewControllerWithIdentifier:IGTableControllerStoryboardID];
    [self addChildViewController:self.tableVC];
    [self.view addSubview:self.tableVC.view];
    [self.tableVC didMoveToParentViewController:self];}

#pragma mark - Actions

- (IBAction)switchAction:(UIBarButtonItem *)sender {
    if (self.switchFlagViewController) {
        self.collectionVC = [self.storyboard instantiateViewControllerWithIdentifier:IGCollectionControllerStoryboardID];
        [self swapFromViewController:self.tableVC toViewController:self.collectionVC];
        self.switchFlagViewController = NO;
    }else{
        self.tableVC = [self.storyboard instantiateViewControllerWithIdentifier:IGTableControllerStoryboardID];
        [self swapFromViewController:self.collectionVC toViewController:self.tableVC];
        self.switchFlagViewController = YES;
    }
}

#pragma mark - Methods

- (void)swapFromViewController:(UIViewController *)fromViewController toViewController:(UIViewController *)toViewController {
    self.navigationController.navigationBar.translucent = NO;
    
    toViewController.view.frame = self.view.bounds;
    
    [fromViewController willMoveToParentViewController:nil];
    [self addChildViewController:toViewController];
    
    [self transitionFromViewController:fromViewController toViewController:toViewController duration:ANIMATION_DURATION_IN_SECONDS
                               options:UIViewAnimationOptionTransitionCrossDissolve animations:nil completion:^(BOOL finished) {
                                   [fromViewController removeFromParentViewController];
                                   [toViewController didMoveToParentViewController:self];
                               }];
    self.navigationController.navigationBar.translucent = YES;
}

#pragma mark - Segue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"pushAddHeroViewController"]) {
        IGAddHeroesViewController *addViewController = segue.destinationViewController;
        if (self.switchFlagViewController) {
            addViewController.dataSource = [self.tableVC dataSource];
        } else {
            addViewController.dataSource = [self.collectionVC dataSource];
        }
    }
}

@end