//
//  SiteValue.h
//  Logins
//
//  Created by William Neville on 2/10/14.
//  Copyright (c) 2014 William Neville. All rights reserved.
//
//  Interface for SiteValue, an Object that stores login information to
//  different web services. See SiteValue.m for more detailed information on
//  each method.

#import <Foundation/Foundation.h>

@interface SiteValue : NSObject {
  NSString *username;
  NSString *password;
  int count;
}
//Setters
- (void)setUsername:(NSString *)newUsername;
- (void)setPassword:(NSString *)newPassword;
- (void)setCount:(int)newCount;
+ (void)setLogin:(NSMutableDictionary *)newLogin;

//Getters
- (NSString *)username;
- (NSString *)password;
- (int)count;
+ (NSMutableDictionary *)login;

- (void)print;
+ (void)printDictionary;
+ (BOOL)addToDictionaryWithKey:(NSString *)theKey
                   andUsername:(NSString *)theUsername
                   andPassword:(NSString *)thePassword
                      andCount:(int)theCount;
+ (BOOL)addToDictionaryWithKey:(NSString *)theKey
                   andUsername:(NSString *)theUsername
                   andPassword:(NSString *)thePassword;
- (void)increaseCount;
+ (SiteValue *)siteValueWithUsername:(NSString *)theUsername
                         andPassword:(NSString *)thePassword
                            andCount:(int)theCount;
- (SiteValue *)initWithUsername:(NSString *)theUsername
                    andPassword:(NSString *)thePassword
                       andCount:(int)theCount;

@end
