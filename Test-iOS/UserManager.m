//
//  UserManager.m
//  Test-iOS
//
//  Created by Bhavin Ahir on 2017-07-13.
//  Copyright © 2017 Bhavin Ahir. All rights reserved.
//

#import "UserManager.h"

@implementation UserManager




+ (id)sharedInstance {
    static UserManager *sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[self alloc] init];
        
    });
    
    return sharedManager;
}

-(void)offerDetailApiCall:(OfferDetail)completion{

    
    //Make all api Calls to fetch data
  
}


@end
