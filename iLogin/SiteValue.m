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

//Declared static so that the same dictionary is shared amongst all SiteValues
static NSMutableDictionary *login;

//Begin getters and setters
- (void)setUsername:(NSString *)newUsername {
  username = newUsername;
}

- (void)setPassword:(NSString *)newPassword {
  password = newPassword;
}

- (void)setCount:(int)newCount {
  count = newCount;
}

+ (void)setLogin:(NSMutableDictionary *)newLogin {
  login = newLogin;
}

- (NSString *)username {
  return username;
}

- (NSString *)password {
  return password;
}

- (int)count {
  return count;
}

+ (NSMutableDictionary *)login {
  return login;
}

//end getters and setters

//Printing out the state of the SiteValue object in an appealing way.
- (void)print {
  NSLog(@"Username = %@\nPassword = %@\nNumber of logins = %d",
        username, password, count);
}

+ (void)printDictionary {
  for(NSString *key in login) {
    NSLog(@"Key: %@", key);
    [[login objectForKey:key] print];
  }
}

//Add a SiteValue to a login dictionary, duplicate usernames not allowed
+ (BOOL)addToDictionaryWithKey:(NSString *)theKey
                   andUsername:(NSString *)theUsername
                   andPassword:(NSString *)thePassword
                      andCount:(int)theCount {
  //Lazy instantiation of the dictionary
  if(!login) {
    login = [[NSMutableDictionary alloc] init];
  }
  //If username already exists, do not add to the dictionary
  for(NSString *key in login) {
    if([[[login objectForKey:key] username]
        isEqualToString:theUsername]) {
      return NO;
    }
  }
  [login setObject:[SiteValue siteValueWithUsername:theUsername
                                                andPassword:thePassword
                                                   andCount:theCount]
                    forKey:theKey];
  return YES;
}

//Overloaded version of above method that defaults count to 0
+ (BOOL)addToDictionaryWithKey:(NSString *)theKey
                   andUsername:(NSString *)theUsername
                   andPassword:(NSString *)thePassword {
  return [SiteValue addToDictionaryWithKey:theKey
                               andUsername:theUsername
                               andPassword:thePassword
                                  andCount:0];
}

- (void)increaseCount {
  count++;
}

//Class method that calls the relevant init method
+ (SiteValue *)siteValueWithUsername:(NSString *)theUsername
                         andPassword:(NSString *)thePassword
                            andCount:(int)theCount {
  return [[SiteValue alloc] initWithUsername:theUsername
                                 andPassword:thePassword
                                    andCount:theCount];
}

//Initialization method that set username and password accordingly
- (SiteValue *)initWithUsername:(NSString *)theUsername
                    andPassword:(NSString *)thePassword
                       andCount:(int)theCount {
  self = [super init];
  if (self) {
    username = theUsername;
    password = thePassword;
    count = theCount;
  }
  return self;
}

@end
