//
//  AddEntryViewController.m
//  iLogin
//
//  Created by William Neville on 3/3/14.
//  Copyright (c) 2014 William Neville. All rights reserved.
//

#import "AddEntryViewController.h"
#import "ViewController.h"
#import "SiteValue.h"

@interface AddEntryViewController ()

@end

@implementation AddEntryViewController


- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
  [self.tempWebsiteField becomeFirstResponder];
}

- (IBAction)submitButtonTapped:(UIButton *)sender {
}

/* Write the shared SiteValue's fields with what the user
 entered, so that the correct values are added back into
 the array */
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  self.tempToAdd.website = self.tempWebsiteField.text;
  self.tempToAdd.username = self.tempUsernameField.text;
  self.tempToAdd.password = self.tempPasswordField.text;
}

@end
