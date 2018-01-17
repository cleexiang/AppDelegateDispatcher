//
//  AppServiceDispatcher.m
//  AppDelegateDispatcher
//
//  Created by 李响 on 2018/1/17.
//  Copyright © 2018年 Lixiang. All rights reserved.
//

#import "AppDelegateDispatcher.h"

@implementation AppDelegateDispatcher

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    for (id<AppService> module in self.services) {
        [module applicationDidFinishLaunching:application];
    }
}

- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(nullable NSDictionary<UIApplicationLaunchOptionsKey, id> *)launchOptions {
    BOOL status = YES;
    for (id<AppService> service in self.services) {
        if ([service respondsToSelector:@selector(application:willFinishLaunchingWithOptions:)]) {
            status = status && [service application:application willFinishLaunchingWithOptions:launchOptions];
        }
    }
    return status;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(nullable NSDictionary<UIApplicationLaunchOptionsKey, id> *)launchOptions {
    BOOL status = YES;
    for (id<AppService> service in self.services) {
        if ([service respondsToSelector:@selector(application:didFinishLaunchingWithOptions:)]) {
            status = status && [service application:application didFinishLaunchingWithOptions:launchOptions];
        }
    }
    return status;
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    for (id<AppService> service in self.services) {
        if ([service respondsToSelector:@selector(applicationDidBecomeActive:)]) {
            [service applicationDidBecomeActive:application];
        }
    }
}

- (void)applicationWillResignActive:(UIApplication *)application {
    for (id<AppService> service in self.services) {
        if ([service respondsToSelector:@selector(applicationWillResignActive:)]) {
            [service applicationWillResignActive:application];
        }
    }
}

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url {
    BOOL status = YES;
    for (id<AppService> service in self.services) {
        if ([service respondsToSelector:@selector(application:handleOpenURL:)]) {
            status = status && [service application:application handleOpenURL:url];
        }
    }
    return status;
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(nullable NSString *)sourceApplication annotation:(id)annotation {
    BOOL status = YES;
    for (id<AppService> service in self.services) {
        if ([service respondsToSelector:@selector(application:openURL:sourceApplication:annotation:)]) {
            status = status && [service application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
        }
    }
    return status;
}

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey, id> *)options {
    BOOL status = YES;
    for (id<AppService> service in self.services) {
        if ([service respondsToSelector:@selector(application:openURL:options:)]) {
            if (@available(iOS 9.0, *)) {
                status = status && [service application:app openURL:url options:options];
            } else {
                // Fallback on earlier versions
            }
        }
    }
    return status;
}

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    for (id<AppService> service in self.services) {
        if ([service respondsToSelector:@selector(applicationDidReceiveMemoryWarning:)]) {
            [service applicationDidReceiveMemoryWarning:application];
        }
    }
}

- (void)applicationWillTerminate:(UIApplication *)application {
    for (id<AppService> service in self.services) {
        if ([service respondsToSelector:@selector(applicationWillTerminate:)]) {
            [service applicationWillTerminate:application];
        }
    }
}

- (void)applicationSignificantTimeChange:(UIApplication *)application {
    for (id<AppService> service in self.services) {
        if ([service respondsToSelector:@selector(applicationSignificantTimeChange:)]) {
            [service applicationSignificantTimeChange:application];
        }
    }
}

- (void)application:(UIApplication *)application didRegisterUserNotificationSettings:(UIUserNotificationSettings *)notificationSettings {
    for (id<AppService> service in self.services) {
        if ([service respondsToSelector:@selector(application:didRegisterUserNotificationSettings:)]) {
            [service application:application didRegisterUserNotificationSettings:notificationSettings];
        }
    }
}

- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
    for (id<AppService> service in self.services) {
        if ([service respondsToSelector:@selector(application:didRegisterForRemoteNotificationsWithDeviceToken:)]) {
            [service application:application didRegisterForRemoteNotificationsWithDeviceToken:deviceToken];
        }
    }
}

- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error {
    for (id<AppService> service in self.services) {
        if ([service respondsToSelector:@selector(application:didFailToRegisterForRemoteNotificationsWithError:)]) {
            [service application:application didFailToRegisterForRemoteNotificationsWithError:error];
        }
    }
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo {
    for (id<AppService> service in self.services) {
        if ([service respondsToSelector:@selector(application:didReceiveRemoteNotification:)]) {
            [service application:application didReceiveRemoteNotification:userInfo];
        }
    }
}

- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification {
    for (id<AppService> service in self.services) {
        if ([service respondsToSelector:@selector(application:didReceiveLocalNotification:)]) {
            [service application:application didReceiveLocalNotification:notification];
        }
    }
}

- (void)application:(UIApplication *)application handleActionWithIdentifier:(nullable NSString *)identifier forLocalNotification:(UILocalNotification *)notification completionHandler:(void(^)())completionHandler {
    for (id<AppService> service in self.services) {
        if ([service respondsToSelector:@selector(application:handleActionWithIdentifier:forLocalNotification:completionHandler:)]) {
            [service application:application handleActionWithIdentifier:identifier forLocalNotification:notification completionHandler:completionHandler];
        }
    }
}


- (void)application:(UIApplication *)application handleActionWithIdentifier:(nullable NSString *)identifier forRemoteNotification:(NSDictionary *)userInfo completionHandler:(void(^)())completionHandler {
    for (id<AppService> service in self.services) {
        if ([service respondsToSelector:@selector(application:handleActionWithIdentifier:forRemoteNotification:completionHandler:)]) {
            [service application:application handleActionWithIdentifier:identifier forRemoteNotification:userInfo completionHandler:completionHandler];
        }
    }
}

- (void)application:(UIApplication *)application handleActionWithIdentifier:(nullable NSString *)identifier forRemoteNotification:(NSDictionary *)userInfo
   withResponseInfo:(NSDictionary *)responseInfo completionHandler:(void(^)())completionHandler {
    for (id<AppService> service in self.services) {
        if ([service respondsToSelector:@selector(application:handleActionWithIdentifier:forRemoteNotification:withResponseInfo:completionHandler:)]) {
            if (@available(iOS 9.0, *)) {
                [service application:application handleActionWithIdentifier:identifier forRemoteNotification:userInfo withResponseInfo:responseInfo completionHandler:completionHandler];
            } else {
                // Fallback on earlier versions
            }
        }
    }
}

- (void)application:(UIApplication *)application handleActionWithIdentifier:(nullable NSString *)identifier forLocalNotification:(UILocalNotification *)notification
   withResponseInfo:(NSDictionary *)responseInfo completionHandler:(void(^)())completionHandler {
    for (id<AppService> service in self.services) {
        if ([service respondsToSelector:@selector(application:handleActionWithIdentifier:forLocalNotification:withResponseInfo:completionHandler:)]) {
            if (@available(iOS 9.0, *)) {
                [service application:application handleActionWithIdentifier:identifier forLocalNotification:notification withResponseInfo:responseInfo completionHandler:completionHandler];
            } else {
                // Fallback on earlier versions
            }
        }
    }
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult result))completionHandler {
    for (id<AppService> service in self.services) {
        if ([service respondsToSelector:@selector(application:didReceiveRemoteNotification:fetchCompletionHandler:)]) {
            [service application:application didReceiveRemoteNotification:userInfo fetchCompletionHandler:completionHandler];
        }
    }
}

@end
