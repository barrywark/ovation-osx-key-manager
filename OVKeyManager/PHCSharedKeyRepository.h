//
//  PHCSharedKeyRepository.h
//  Ovation-Key-Manager
//
//  Created by Barry Wark on 6/19/12.
//  Copyright (c) 2012 Physion Consulting LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OVLicenseInfo.h"

typedef void (^repository_error_callback)(NSError *err);

@protocol PHCSharedKeyRepository <NSObject>

- (NSSet*)keys:(repository_error_callback)error;
- (void)addKey:(NSString*)key forLicense:(id<OVLicenseInfo>)licenseInfo 
       success:(void (^)())success
         error:(repository_error_callback)err;
- (void)updateKey:(NSString*)key forLicense:(id<OVLicenseInfo>)licenseInfo 
          success:(void (^)())success
            error:(repository_error_callback)err;

@end
