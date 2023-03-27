//
//  AppDelegate.m
//  dlahero
//
//  Created by 柚子茶 on 2023/3/17.
//

#import "AppDelegate.h"
#import <ALDFramework/AldPlatformSDK.h>
#import "LoquacitySuperpotentCenterProvider.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    AldInitInfo *bundleInfo = [AldInitInfo currentInitInfo];
//    bundleInfo.game_id = 1125;
//    bundleInfo.app_id = 12;
//    bundleInfo.channel_id = 332;
//    NSString *appDomain = [[NSBundle mainBundle] bundleIdentifier];
   
    bundleInfo.game_id = 1129;
    bundleInfo.app_id = 19;
    bundleInfo.channel_id = 332;
    [[AldGameSDK sharedGameSDK] application:application
              didFinishLaunchingWithOptions:launchOptions];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.gameViewController = [[GameViewController alloc] init];
    self.window.rootViewController = self.gameViewController;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
//    [[LoquacitySuperpotentCenterProvider sharedInstance] authenticateLocalUser];
    return YES;
}

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options{
//    [[AldGameSDK sharedGameSDK] application:app openURL:url options:options];
    return YES;
}
#pragma mark 新增內容
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
//    [[AldGameSDK sharedGameSDK] application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
    return YES;
}

- (void)applicationDidBecomeActive:(UIApplication *)application{
//    [[AldGameSDK sharedGameSDK] applicationDidBecomeActive:application];
}

- (BOOL)application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity restorationHandler:(void (^)(NSArray<id<UIUserActivityRestoring>> * _Nullable))restorationHandler{
//    [[AldGameSDK sharedGameSDK] application:application continueUserActivity:userActivity restorationHandler:restorationHandler];
    return YES;
}


@end
