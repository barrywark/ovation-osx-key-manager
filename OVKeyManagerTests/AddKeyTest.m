//
//  AddKeyTest.m
//  OVKeyManager
//
//  Created by Barry Wark on 6/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AddKeyTest.h"
#import "PHCAppDelegate.h"

@implementation AddKeyTest
@synthesize addCalled;

- (void)testShouldAddKey {
    PHCAppDelegate *appDelegate = [[PHCAppDelegate alloc] init];
    
    appDelegate.institution = @"institution";
    appDelegate.group = @"group";
    appDelegate.sharedKey = @"sharedKey";
    
    appDelegate.keyRepository = self;
    
    [appDelegate addUpdateKey:self]; 
}

@end
