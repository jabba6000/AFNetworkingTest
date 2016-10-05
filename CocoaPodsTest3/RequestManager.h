//
//  RequestManager.h
//  CocoaPodsTest3
//
//  Created by Uri Fuholichev on 10/5/16.
//  Copyright © 2016 Andrei Karpenia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>

@interface RequestManager : AFHTTPSessionManager

+ (instancetype)sharedManager;
- (void)someGETRequest;

@end

