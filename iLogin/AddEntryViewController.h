//
//  AddEntryViewController.h
//  iLogin
//
//  Created by William Neville on 3/3/14.
//  Copyright (c) 2014 William Neville. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SiteValue.h"

@interface AddEntryViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *tempWebsiteField;
@property (weak, nonatomic) IBOutlet UITextField *tempUsernameField;
@property (weak, nonatomic) IBOutlet UITextField *tempPasswordField;
@property (strong, nonatomic) SiteValue *tempToAdd;


- (void)viewWillAppear:(BOOL)animated;
- (IBAction)submitButtonTapped:(UIButton *)sender;
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;

@end
