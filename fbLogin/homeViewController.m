//
//  ViewController.m
//  fbLogin
//
//  Created by Evelyn on 12/10/12.
//  Copyright (c) 2012 Evelyn. All rights reserved.
//

#import "homeViewController.h"
#import "AppDelegate.h"

@interface homeViewController ()

@property (strong, nonatomic) NSDictionary<FBGraphUser> *user;

//- (void)sessionStateChanged:(NSNotification*)notification;

@end

@implementation homeViewController

//- (void)sessionStateChanged:(NSNotification*)notification {
//    if (!FBSession.activeSession.isOpen) {
//        [self dismissViewControllerAnimated:YES completion:nil];
//    }
//}

//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//	// Do any additional setup after loading the view, typically from a nib.
//    
//    [[NSNotificationCenter defaultCenter]
//     addObserver:self
//     selector:@selector(sessionStateChanged:)
//     name:FBSessionStateChangedNotification
//     object:nil];
//
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goToProfilePage:(id)sender {
}

- (IBAction)Logout:(id)sender {
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    [appDelegate closeSession];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
@end
