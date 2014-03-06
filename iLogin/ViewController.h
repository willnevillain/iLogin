//
//  ViewController.h
//  iLogin
//
//  Created by William Neville on 3/2/14.
//  Copyright (c) 2014 William Neville. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SiteValue.h"

@interface ViewController : UIViewController

//Properties
@property (weak, nonatomic) IBOutlet UITextField *websiteField;
@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UITextField *countField;
@property (weak, nonatomic) IBOutlet UITextField *itemNumberField;
@property (strong, nonatomic) NSMutableArray *entries;
@property (nonatomic) NSInteger position;
@property (strong, nonatomic) SiteValue *tempToAdd;

//Initial view methods
- (IBAction)nextEntry:(id)sender;
- (IBAction)previousEntry:(id)sender;
- (IBAction)incrementCount:(id)sender;

//Methods that deal with second view
- (IBAction)completeAddToArray:(UIStoryboardSegue *)segue;
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;

//Other methods
- (void)setFields;

@end
