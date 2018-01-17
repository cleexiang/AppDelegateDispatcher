//
//  AppDelegate.m
//  AppServiceDispatcher-Example
//
//  Created by 李响 on 2018/1/17.
//  Copyright © 2018年 Lixiang. All rights reserved.
//

#import "AppDelegate.h"
#import "Service1.h"
#import "Service2.h"
#import "Service3.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (instancetype)init {
    self = [super init];
    if (self) {
        self.services = @[[Service1 new],
                         [Service2 new],
                         [Service3 new]];
    }
    return self;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [super application:application didFinishLaunchingWithOptions:launchOptions];
    return YES;
}

@end
