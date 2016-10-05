//
//  ViewController.m
//  CocoaPodsTest3
//
//  Created by Uri Fuholichev on 10/5/16.
//  Copyright © 2016 Andrei Karpenia. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>
#import "RequestManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [[RequestManager sharedManager] someGETRequest];
    
    
//    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
//    manager.responseSerializer = [AFHTTPResponseSerializer new];
//    [manager GET:@"http://ufa.farfor.ru/getyml/?key=ukAXxeJYZN" parameters:nil progress: nil success:^(NSURLSessionTask *task, id responseObject) {
//        NSData * data = (NSData *)responseObject;
//        NSLog(@"Response string: %@", [NSString stringWithUTF8String:[data bytes]]);
//    } failure:^(NSURLSessionTask *operation, NSError *error) {
//        NSLog(@"Error: %@", error);
//    }];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
