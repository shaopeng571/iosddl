

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "AldUserData.h"
#import "AldRoleInfo.h"
#import "AldInitInfo.h"
#import "AldBuyGoodParameter.h"


typedef void (^Poi_NCheckLimitAction)(BOOL can);
typedef void (^AldGameAction)(BOOL isSuccess);

typedef void(^AldCompletionHandler)(NSString * _Nullable currencyCode,NSDictionary  * _Nullable dictionary);

@protocol AldsdkDelegate;
@interface AldGameSDK: NSObject


@property (nonatomic, weak)id <AldsdkDelegate> _Nullable sdkDelegate;

+ (instancetype)sharedGameSDK;
typedef void(^SuccessBlock)(id response);
typedef void (^FailBlock)(NSError *error);

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
            options:(nonnull NSDictionary<UIApplicationOpenURLOptionsKey, id> *)options;
- (void)applicationDidBecomeActive:(UIApplication *)application;
- (void)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString*)sourceApplication annotation:(id)annotation;
- (void)application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity restorationHandler:(void (^)(NSArray * _Nullable))restorationHandler;
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler;


- (void) reportTrackEvent:(NSString *)eventName;


- (void)initSDK:(UIViewController *)manganeseKerning ;


- (void)login;

- (void)roleCreate:(AldRoleInfo *)roleInfo;
- (void)roleLogin:(AldRoleInfo *)roleInfo;
- (void)roleLevelUp:(AldRoleInfo *)roleInfo;
-(void)shareUrlWithResult:(AldGameAction)result;
-(void)facebookSharePhoto:(AldGameAction)result;
-(void)facebookFansHome;
-(void)appStore;
-(void)imageSelector;

-(void)appStoreReview;


- (void)logout;

-(void)queryCurrencySymbolWithCompletionHandler:(_Nullable AldCompletionHandler)completionHandler;

//-(void)IAPWithParam:(AldBuyGoodParameter *)parameter;







- (void)applicationWillEnterForeground:(UIApplication *)application;






- (void)Poi_assivetiveIconShow;



- (void)Poi_assivetiveIconHide;



















- (NSString *)sdkVersion;










- (void)Poi_didBecomeActive;


- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken;


#pragma mark - 测试用接口（正式包中不要调用）

- (void)clearKeyChainData;

@end

@protocol AldsdkDelegate <NSObject>


- (void)onInitSuccess;



- (void)onInitFail:(NSError *_Nullable)kerror;



- (void)onLoginSuccess:(AldUserData *)kuser;



- (void)onLoginFail:(NSError *_Nonnull)kerror;



- (void)onLogout;


//- (void)onPaySuccess;


- (void)imageSelector:(UIImage *)image;



@end

