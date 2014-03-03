//
//  SiteValue.h
//  iLogin
//
//  Created by William Neville on 3/2/14.
//  Copyright (c) 2014 William Neville. All rights reserved.
//
//  A tweaked version of the SiteValue class from Assignment 1 that will be
//  used for Assignment 2

#import <Foundation/Foundation.h>

@interface SiteValue : NSObject {
  NSString *website;
  NSString *username;
  NSString *password;
  NSUInteger count;
  NSUInteger position;
}
//Setters
- (void)setWebsite:(NSString *)newWebsite;
- (void)setUsername:(NSString *)newUsername;
- (void)setPassword:(NSString *)newPassword;
- (void)setCount:(NSUInteger)newCount;
- (void)setPosition:(NSUInteger)newPosition;

//Getters
- (NSString *)website;
- (NSString *)username;
- (NSString *)password;
- (NSUInteger)count;
- (NSUInteger)position;

//Other methods
- (void)increaseCount;
+ (SiteValue *)siteValueWithWebsite:(NSString *)theWebsite
                        andUsername:(NSString *)theUsername
                         andPassword:(NSString *)thePassword
                            andCount:(NSUInteger)theCount
                          atPosition:(NSUInteger)thePosition;
- (SiteValue *)initWithWebsite:(NSString *)theWebsite
                   andUsername:(NSString *)theUsername
                   andPassword:(NSString *)thePassword
                      andCount:(NSUInteger)theCount
                    atPosition:(NSUInteger)thePosition;

@end
