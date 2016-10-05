//
//  RequestManager.m
//  CocoaPodsTest3
//
//  Created by Uri Fuholichev on 10/5/16.
//  Copyright © 2016 Andrei Karpenia. All rights reserved.
//

#import "RequestManager.h"

@implementation RequestManager

+ (instancetype)sharedManager {
    static RequestManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [RequestManager new];
    });
    return manager;
}

- (instancetype)init {
    NSURLSessionConfiguration *sessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURL *baseURL = [NSURL URLWithString:@"http://ufa.farfor.ru/"];
    self = [super initWithBaseURL:baseURL sessionConfiguration:sessionConfiguration];
    if (self) {
        self.responseSerializer = [AFHTTPResponseSerializer serializer]; // ТУТ попробуй либо это AFXMLParserResponseSerializer либо это AFXMLDocumentResponseSerializer
        self.requestSerializer = [AFHTTPRequestSerializer serializer];
    }
    return self;
}

- (void)someGETRequest {
    NSDictionary *payload = @{@"bla" : @"bla"};
    NSString *urlString = @"http://ufa.farfor.ru/getyml/?key=ukAXxeJYZN";
    [self GET:urlString parameters:payload progress:nil success:^(NSURLSessionDataTask *task, id responseObject) {
            NSData * data = (NSData *)responseObject;
            NSLog(@"Response string: %@", [NSString stringWithUTF8String:[data bytes]]); }
      failure:^(NSURLSessionDataTask *task, NSError  *error) {
        // process error
    }];
}

@end