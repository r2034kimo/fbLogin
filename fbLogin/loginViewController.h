//
//  loginViewController.h
//  fbLogin
//
//  Created by Evelyn on 12/10/12.
//  Copyright (c) 2012 Evelyn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface loginViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *LoginToFB;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *indicator;

- (IBAction)goInside:(id)sender;


@end
