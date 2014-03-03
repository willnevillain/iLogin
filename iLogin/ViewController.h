//
//  ViewController.h
//  iLogin
//
//  Created by William Neville on 3/2/14.
//  Copyright (c) 2014 William Neville. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *websiteField;
@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UITextField *countField;
@property (strong, nonatomic) NSMutableArray *entries;
@property (nonatomic) NSInteger position;

- (IBAction)nextEntry:(id)sender;
- (IBAction)previousEntry:(id)sender;
- (IBAction)incrementCount:(id)sender;
- (void)setFields;

@end
