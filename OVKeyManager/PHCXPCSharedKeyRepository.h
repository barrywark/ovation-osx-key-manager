//
//  PHCXPCSharedKeyRepository.h
//  Ovation-Key-Manager
//
//  Created by Barry Wark on 6/19/12.
//  Copyright (c) 2012 Physion Consulting LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PHCSharedKeyRepository.h"

@interface PHCXPCSharedKeyRepository : NSObject <PHCSharedKeyRepository>

- (id)initWithLabel:(NSString*)label connectionErrorCallback:(repository_error_callback)err;

- (NSSet*)keys:(repository_error_callback)error;
- (void)addKey:(NSString*)key forLicense:(id)sharedKey error:(repository_error_callback)err;
- (void)updateKey:(NSString*)key forLicense:(id)sharedKey error:(repository_error_callback)err;

@end
