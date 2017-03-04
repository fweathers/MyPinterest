//
//  MPAPIManager.h
//  MyPinterest
//
//  Created by Felicia Weathers on 2/26/17.
//  Copyright © 2017 Felicia Weathers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MPAPIManager : NSObject
    
+ (void)GETRequestWithURL:(NSURL *)URL
        completionHandler:(void(^)(NSData *data, NSURLResponse *response, NSError *error)) completionBlock;

@end
