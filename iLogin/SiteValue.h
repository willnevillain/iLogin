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

@interface SiteValue : NSObject

@property (nonatomic) NSString *website;
@property (nonatomic) NSString *username;
@property (nonatomic) NSString *password;
@property (nonatomic) NSUInteger count;
@property (nonatomic) NSUInteger position;


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
