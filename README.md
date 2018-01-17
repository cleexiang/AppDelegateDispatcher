# AppDelegateDispatcher
Inspired by [https://medium.com/ios-os-x-development/pluggableapplicationdelegate-e50b2c5d97dd](https://medium.com/ios-os-x-development/pluggableapplicationdelegate-e50b2c5d97dd), AppDelegateDispatcher used to decouple AppDelegate from services.

### Installation

pod 'AppDelegateDispatcher'

### How to use?
* make your service conformed protocol `AppService`
* in the service, implement methods which you want to override.

```
@interface Service1 : NSObject <AppService>

@end
```

* make your AppDelegate inherite from AppDelegateDispatcher

```
@interface AppDelegate : AppDelegateDispatcher

@property (strong, nonatomic) UIWindow *window;

@end

```

* in AppDelegate.m, create instances of Services.

```
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

```
