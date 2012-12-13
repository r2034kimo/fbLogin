//
//  profileTableViewController.h
//  fbLogin
//
//  Created by Evelyn on 12/13/12.
//  Copyright (c) 2012 Evelyn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface profileTableViewController : UITableViewController


@property (strong, nonatomic) IBOutlet UILabel *petName;
@property (strong, nonatomic) IBOutlet UILabel *petGender;
@property (strong, nonatomic) IBOutlet UILabel *OwnerName;
@property (strong, nonatomic) IBOutlet UILabel *Email;
@property (strong, nonatomic) IBOutlet UILabel *petAge;
@property (strong, nonatomic) IBOutlet UILabel *petSize;
@property (strong, nonatomic) IBOutlet UILabel *petCharacteristics;
@property (strong, nonatomic) IBOutlet UILabel *petHobbies;
@property (strong, nonatomic) IBOutlet UILabel *petMicrochip;
@property (strong, nonatomic) IBOutlet UILabel *petSpay;
@property (strong, nonatomic) IBOutlet UILabel *petVaccination;
@property (strong, nonatomic) IBOutlet UIImageView *petPhoto;
@property (strong, nonatomic) IBOutlet MKMapView *petLocation;

@end
