//
//  ViewController.m
//  iLogin
//
//  Created by William Neville on 3/2/14.
//  Copyright (c) 2014 William Neville. All rights reserved.
//

#import "ViewController.h"
#import "SiteValue.h"

@interface ViewController ()

@end

@implementation ViewController

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
  
  self.position = 0;
  [self setFields];
}

- (IBAction)nextEntry:(id)sender {
  if(self.position == ([self.entries count] - 1)) {
    return;
  }
  self.position++;
  [self setFields];
  
}

- (IBAction)previousEntry:(id)sender {
  if(self.position == 0) {
    return;
  }
  self.position--;
  [self setFields];
}

- (IBAction)incrementCount:(id)sender {
  [[self.entries objectAtIndex:self.position] increaseCount];
  self.countField.text = [[NSString alloc] initWithFormat:@"%ld",
                          (unsigned long) [[self.entries objectAtIndex:self.position] count]];
}

- (IBAction)addEntry:(id)sender {
  UIViewController *addEntryViewController =
  [[self storyboard] instantiateViewControllerWithIdentifier:@"addEntryScene"];
  [self presentViewController:addEntryViewController animated:YES completion:nil];
}

- (void)setFields {
  self.websiteField.text = [[self.entries objectAtIndex:self.position] website];
  self.usernameField.text = [[self.entries objectAtIndex:self.position] username];
  self.passwordField.text = [[self.entries objectAtIndex:self.position] password];
  self.countField.text = [[NSString alloc] initWithFormat:@"%lu",(unsigned long)
                          [[self.entries objectAtIndex:self.position] count]];
}

@end
