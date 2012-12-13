//
//  editProfileViewController.h
//  fbLogin
//
//  Created by Evelyn on 12/13/12.
//  Copyright (c) 2012 Evelyn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface editProfileViewController : UITableViewController
@property (strong, nonatomic) IBOutlet UIImageView *petImage;

@property (strong, nonatomic) IBOutlet UILabel *Owner;
@property (strong, nonatomic) IBOutlet UILabel *Contact;
@property (strong, nonatomic) IBOutlet UITextField *petName;
@property (strong, nonatomic) IBOutlet UILabel *petGenderSelect;
@property (strong, nonatomic) IBOutlet UITextField *petBreedTF;
@property (strong, nonatomic) IBOutlet UILabel *petAgeSelect;
@property (strong, nonatomic) IBOutlet UITextField *petSizeTF;
@property (strong, nonatomic) IBOutlet UITextView *petCharacterTV;
@property (strong, nonatomic) IBOutlet UITextView *petHobbiesTV;
@property (strong, nonatomic) IBOutlet UILabel *microchipSelect;
@property (strong, nonatomic) IBOutlet UILabel *petSpay;
@property (strong, nonatomic) IBOutlet UILabel *petVaccinated;


@property (strong, nonatomic) IBOutlet UILabel *petCity;
@property (strong, nonatomic) IBOutlet UILabel *petDistrict;
@property (strong, nonatomic) IBOutlet UILabel *petStreet;


- (IBAction)takePicture:(id)sender;

@end
