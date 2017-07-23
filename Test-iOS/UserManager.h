//
//  UserManager.h
//  Test-iOS
//
//  Created by Bhavin Ahir on 2017-07-13.
//  Copyright © 2017 Bhavin Ahir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"


#pragma mark - user blocks

typedef void (^ OfferDetail)(BOOL success,NSDictionary *response);

#pragma mark - Endpoint blocks
typedef void (^ ServerSuccessBlock)(BOOL success, id response);
typedef void (^ ServerFailureBlock)(NSError *error, NSInteger statusCode);



@interface UserManager : NSObject

+ (id)sharedInstance;

-(void)offerDetailApiCall:(OfferDetail)completion;

@end
