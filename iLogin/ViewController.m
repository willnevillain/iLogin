//
//  ViewController.m
//  iLogin
//
//  Created by William Neville on 3/2/14.
//  Copyright (c) 2014 William Neville. All rights reserved.
//

#import "ViewController.h"
#import "SiteValue.h"
#import "AddEntryViewController.h"

@interface ViewController ()

@end

@implementation ViewController

/* Setting up app, hard coding a few login examples */
- (void)viewDidLoad
{
  [super viewDidLoad];
  self.entries = [[NSMutableArray alloc] init];
  [self.entries addObject:[SiteValue siteValueWithWebsite:@"twitter"
                                              andUsername:@"wvnix"
                                              andPassword:@"luv2tweet"
                                                 andCount:88
                                               atPosition:self.entries.count]
   ];
  [self.entries addObject:[SiteValue siteValueWithWebsite:@"gmail"
                                              andUsername:@"googlebob"
                                              andPassword:@"luvsgplus"
                                                 andCount:2
                                               atPosition:self.entries.count]
   ];
  [self.entries addObject:[SiteValue siteValueWithWebsite:@"debianforums"
                                              andUsername:@"debianluvr"
                                              andPassword:@"linuxrulz"
                                                 andCount:128
                                               atPosition:self.entries.count]
   ];
  self.tempToAdd = [[SiteValue alloc] init];
  
  self.position = 0;
  [self setFields];
}

/* Show next entry's information in array */
- (IBAction)nextEntry:(id)sender {
  if(self.position == ([self.entries count] - 1)) {
    return;
  }
  self.position++;
  [self setFields];
  
}

/* Show previous entry's information in array */
- (IBAction)previousEntry:(id)sender {
  if(self.position == 0) {
    return;
  }
  self.position--;
  [self setFields];
}

/* Increment the count of an entry in the array */
- (IBAction)incrementCount:(id)sender {
  [[self.entries objectAtIndex:self.position] increaseCount];
  self.countField.text = [[NSString alloc] initWithFormat:@"%ld",
                          (unsigned long) [[self.entries objectAtIndex:self.position] count]];
}

/* Runs when add new entry view returns. Adds a new SiteValue
 entry into the array */
- (IBAction)completeAddToArray:(UIStoryboardSegue *)segue {
  [self.entries addObject:[SiteValue siteValueWithWebsite:self.tempToAdd.website andUsername:self.tempToAdd.username andPassword:self.tempToAdd.password andCount:0 atPosition:self.entries.count]];
  self.position = self.entries.count - 1;
  [self setFields];
}

/* Make sure same SiteValue object is shared between the two view controllers */
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  AddEntryViewController *addEntryVC = segue.destinationViewController;
  addEntryVC.tempToAdd = self.tempToAdd;
}

/* Write the correct fields in the main view */
- (void)setFields {
  self.websiteField.text = [[self.entries objectAtIndex:self.position] website];
  self.usernameField.text = [[self.entries objectAtIndex:self.position] username];
  self.passwordField.text = [[self.entries objectAtIndex:self.position] password];
  self.countField.text = [[NSString alloc] initWithFormat:@"%lu",(unsigned long)
                          [[self.entries objectAtIndex:self.position] count]];
  self.itemNumberField.text = [[NSString alloc] initWithFormat:@"%lu",(unsigned long)
                          self.position + 1];
}

@end
