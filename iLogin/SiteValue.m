//
//  SiteValue.m
//  Logins
//
//  Created by William Neville on 2/10/14.
//  Copyright (c) 2014 William Neville. All rights reserved.
//
//  Implementation for SiteValue, an Object that stores login information to
//  different web services. The NSMutableDictionary *login is shared by all
//  site values, and should not be initialized directly.

#import "SiteValue.h"

@implementation SiteValue

//Begin getters and setters
- (void)setWebsite:(NSString *)newWebsite {
  website = newWebsite;
}

- (void)setUsername:(NSString *)newUsername {
  username = newUsername;
}

- (void)setPassword:(NSString *)newPassword {
  password = newPassword;
}

- (void)setCount:(NSUInteger)newCount {
  count = newCount;
}

- (void)setPosition:(NSUInteger)newPosition {
  position = newPosition;
}

- (NSString *)website {
  return website;
}

- (NSString *)username {
  return username;
}

- (NSString *)password {
  return password;
}

- (NSUInteger)count {
  return count;
}

- (NSUInteger)position {
  return position;
}
//end getters and setters

- (void)increaseCount {
  count++;
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
    website = theWebsite;
    username = theUsername;
    password = thePassword;
    count = theCount;
    position = thePosition;
  }
  return self;
}

@end
