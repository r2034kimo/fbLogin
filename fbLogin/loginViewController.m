//
//  loginViewController.m
//  fbLogin
//
//  Created by Evelyn on 12/10/12.
//  Copyright (c) 2012 Evelyn. All rights reserved.
//

#import "loginViewController.h"
#import "AppDelegate.h"

@interface loginViewController ()

@end

@implementation loginViewController

- (void)sessionStateChanged:(NSNotification*)notification {
    if (FBSession.activeSession.isOpen) {
        // If the session is open, cache friend data
        FBCacheDescriptor *cacheDescriptor = [FBFriendPickerViewController cacheDescriptor];
        [cacheDescriptor prefetchAndCacheForSession:FBSession.activeSession];
        
        // Go to the menu page by dismissing the modal view controller
        // instead of using segues.
        [self.presentedViewController dismissViewControllerAnimated:YES completion:nil];
    }
}

//- (void)viewWillAppear:(BOOL)animated {
//    [super viewWillAppear:animated];
//    
//    if (FBSession.activeSession.state == FBSessionStateCreatedTokenLoaded) {
//        // Check the session for a cached token to show the proper authenticated
//        // UI. However, since this is not user intitiated, do not show the login UX.
//        AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
//        [appDelegate openSessionWithAllowLoginUI:NO];
//    }
//}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // Register for notifications on FB session state changes
    [[NSNotificationCenter defaultCenter]
     addObserver:self
     selector:@selector(sessionStateChanged:)
     name:FBSessionStateChangedNotification
     object:nil];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goInside:(id)sender {
    
    AppDelegate *appDelegate =
    [[UIApplication sharedApplication] delegate];
    [appDelegate openSessionWithAllowLoginUI:YES];
    
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    
    UIViewController *homeViewController = [mainStoryboard instantiateInitialViewController];
    
    homeViewController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    
    [self presentViewController:homeViewController animated: YES completion:nil];
    
}
@end
