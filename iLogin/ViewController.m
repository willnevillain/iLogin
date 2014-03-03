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
  
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextEntry:(id)sender {
  /*self.websiteField.text = @"From next";
  self.usernameField.text = @"From next";
  self.passwordField.text = @"From next";
  self.countField.text = @"1";*/
  if(self.position == ([self.entries count] - 1)) {
    return;
  }
  self.position++;
  [self setFields];
  
}

- (IBAction)previousEntry:(id)sender {
  /*self.websiteField.text = @"From prev";
  self.usernameField.text = @"From prev";
  self.passwordField.text = @"From prev";
  self.countField.text = @"-1";*/
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

- (void)setFields {
  self.websiteField.text = [[self.entries objectAtIndex:self.position] website];
  self.usernameField.text = [[self.entries objectAtIndex:self.position] username];
  self.passwordField.text = [[self.entries objectAtIndex:self.position] password];
  self.countField.text = [[NSString alloc] initWithFormat:@"%lu",(unsigned long)
                          [[self.entries objectAtIndex:self.position] count]];
}

@end
