//
//  AppServiceDispatcher.h
//  AppDelegateDispatcher
//
//  Created by 李响 on 2018/1/17.
//  Copyright © 2018年 Lixiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol AppService <UIApplicationDelegate>

@end

@interface AppServiceDispatcher : UIResponder <UIApplicationDelegate>

@property(nonatomic, strong) UIWindow *window;
@property(nonatomic, strong) NSMutableArray<id<AppService>> *services;

@end

