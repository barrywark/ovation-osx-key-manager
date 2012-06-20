//
//  PHCAppDelegate.m
//  Ovation-Key-Manager
//
//  Created by Barry Wark on 6/19/12.
//  Copyright (c) 2012 Physion Consulting LLC. All rights reserved.
//

#import "PHCAppDelegate.h"
#import "PHCErrors.h"
#import "PHCXPCSharedKeyRepository.h"

@interface PHCAppDelegate ()

@property (readwrite,nonatomic,strong) NSString * updateActionTitle;
@property (readwrite,nonatomic,strong) NSError * keyRepositoryError;

@end

@implementation PHCAppDelegate

@synthesize window;
@synthesize keyRepositoryError;
@synthesize updateActionTitle;
@synthesize keyRepository;
@synthesize institution;
@synthesize group;
@synthesize sharedKey;
@synthesize statusText;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{   
    self.keyRepository = [[PHCXPCSharedKeyRepository alloc] initWithLabel:@"com.physionconsulting.OVKeyManagerHelper" 
                                                   connectionErrorCallback:^(NSError *err) {
                                                       self.keyRepositoryError = err;
                                                   }];
}

- (NSString*)updateActionTitle {
    return NSLocalizedString(@"Update", @"Update key");
}

- (IBAction)addUpdateKey:(id)sender {
    
    id<OVLicenseInfo> licenseInfo = [[OVLicenseInfo alloc] initWithInstitution:self.institution
                                                                         group:self.group 
                                                                       product:@"Ovation"
                                                                    licenseKey:nil];
    
    self.statusText = nil;
    self.keyRepositoryError = nil;
    
    [self.keyRepository addKey:self.sharedKey 
                    forLicense:licenseInfo
                       success:^() {
                           self.statusText = NSLocalizedString(@"Key updated succesfully", @"Shared Encryption Key Added/Updated Succesfully");
                       }
                         error:^(NSError *err) {
                             self.keyRepositoryError = err; 
                         }];
}

@end