//
//  SiteValue.m
//  Logins
//
//  Created by William Neville on 2/10/14.
//  Copyright (c) 2014 William Neville. All rights reserved.
//
//  Implementation for SiteValue, an Object that stores login information to
//  different web services. These objects will be used in an array to store
//  the different logins that the user enters in the main app.

#import "SiteValue.h"

@implementation SiteValue


- (void)increaseCount {
  [self setCount:([self count]+1)];
}

//Class method that calls the relevant init method
+ (SiteValue *)siteValueWithWebsite:(NSString *)theWebsite
                        andUsername:(NSString *)theUsername
                        andPassword:(NSString *)thePassword
                           andCount:(NSUInteger)theCount
                         atPosition:(NSUInteger)thePosition {
  return [[SiteValue alloc] initWithWebsite:theWebsite
                                andUsername:theUsername
                                andPassword:thePassword
                                   andCount:theCount
                                 atPosition:thePosition];
}

//Initialization method that set username and password accordingly
- (SiteValue *)initWithWebsite:(NSString *)theWebsite
                   andUsername:(NSString *)theUsername
                   andPassword:(NSString *)thePassword
                      andCount:(NSUInteger)theCount
                    atPosition:(NSUInteger)thePosition {
  self = [super init];
  if (self) {
    [self setWebsite:theWebsite];
    [self setUsername:theUsername];
    [self setPassword:thePassword];
    [self setCount:theCount];
    [self setPosition:thePosition];
  }
  return self;
}

@end
