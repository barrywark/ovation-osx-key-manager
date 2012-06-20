//
//  OVLicenseInfo.m
//  OVKeyManager
//
//  Created by Barry Wark on 6/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "OVLicenseInfo.h"

@implementation OVLicenseInfo

@synthesize institution;
@synthesize group;
@synthesize product;
@synthesize licenseKey;

- (id)initWithInstitution:(NSString*)theInsititution
                    group:(NSString*)theGroup
                  product:(NSString*)theProduct
               licenseKey:(NSString*)theLicenseKey {
    
    if((self = [super init])) {
        self.institution = theInsititution;
        self.group = theGroup;
        self.product = theProduct;
        self.licenseKey = theLicenseKey;
    }
    
    return self;
}
@end
