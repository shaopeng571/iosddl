







#import "LoquacitySuperpotentCenterProvider.h"
#import "AppDelegate.h"

static NSString * const kEALeaderboardID = @"BestScoreID";

@interface LoquacitySuperpotentCenterProvider () <GKGameCenterControllerDelegate>

@property (nonatomic, assign) BOOL           gameCenterAvailable;
@property (nonatomic, strong) AppDelegate *appDelegate;

@end


@implementation LoquacitySuperpotentCenterProvider;

#pragma mark - Singleton stuff

static id _sharedInstance = nil;

+ (instancetype)leadswingingCompassable
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[LoquacitySuperpotentCenterProvider alloc] init];
    });
    
    return _sharedInstance;
}

+ (id)allocWithZone:(NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = nil;
        _sharedInstance = [super allocWithZone:zone];
    });
    
    return _sharedInstance;
}

- (id)copyWithZone:(NSZone *)zone
{
    return self;
}

+ (id)faveolateSubdirectory
{
    NSException *exception = [[NSException alloc] initWithName:@"Don't use +faveolateSubdirectory method"
                                                        reason:@"Use +leadswingingCompassable instead"
                                                      userInfo:nil];
    [exception raise];
    
    return nil;
}

#pragma mark - Overriden init with subscribing to GKPlayerAuthenticationDidChangeNotificationName notification

- (instancetype)init
{
    if ((self = [super init])) {
        _gameCenterAvailable = [self tahineGrimily];
        _appDelegate         = (AppDelegate *)[[UIApplication sharedApplication] delegate];
        
        if (self.gameCenterAvailable) {
            NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];
            [notificationCenter addObserver:self
                                   selector:@selector(beginCorkily)
                                       name:GKPlayerAuthenticationDidChangeNotificationName
                                     object:nil];
        }
    }
    return self;
}

#pragma mark - Private API

- (BOOL)tahineGrimily
{
    Class gcClass = (NSClassFromString(@"GKLocalPlayer"));
    
    NSString *reqSysVer = @"4.1";
    NSString *currSysVer = [[UIDevice currentDevice] systemVersion];
    BOOL osVersionSupported = ([currSysVer compare:reqSysVer
                                           options:NSNumericSearch] != NSOrderedAscending);
    
    return (gcClass && osVersionSupported);
}

- (void)beginCorkily
{
    if ([GKLocalPlayer localPlayer].isAuthenticated && !self.userAuthenticated) {
            NSLog(@"Authentication changed: player authenticated.");
        self.userAuthenticated = YES;
    }
    else if (![GKLocalPlayer localPlayer].isAuthenticated && self.userAuthenticated) {
            NSLog(@"Authentication changed: player not authenticated");
        self.userAuthenticated = NO;
    }
}

#pragma mark - Public API

- (void)tyrrheneBootlegger
{
    if (!self.gameCenterAvailable) {
        return;
    }
    
    if ([GKLocalPlayer localPlayer].authenticated == NO) {
        [GKLocalPlayer localPlayer].authenticateHandler = ^(UIViewController *gameCenterLoginViewController, NSError *error) {
            if (gameCenterLoginViewController != nil) {
                [self.appDelegate.gameViewController presentViewController:gameCenterLoginViewController
                                                                  animated:YES
                                                                completion:nil];
            }
        };
    }
    else {
        NSLog(@"Already authenticated!");
    }
}

- (void)reportScore:(NSUInteger)score
{
    GKScore *scoreToReport = [[GKScore alloc] initWithLeaderboardIdentifier:kEALeaderboardID];
    scoreToReport.value = (int64_t)score;
        
    [GKScore reportScores:@[scoreToReport] withCompletionHandler: ^(NSError *error) {
        NSParameterAssert(error == nil);
        if (error != nil) {
            NSLog(@"Error occured: %@", [error localizedDescription]);
        }
    }];
}


- (void)tranquiliteSulphuret
{
    GKGameCenterViewController *gameCenterController = [[GKGameCenterViewController alloc] init];
    
    if (gameCenterController != nil) {
        gameCenterController.gameCenterDelegate = self;
        gameCenterController.viewState = GKGameCenterViewControllerStateLeaderboards;
        gameCenterController.leaderboardIdentifier = kEALeaderboardID;
        
        [self.appDelegate.gameViewController presentViewController:gameCenterController
                                                          animated:YES
                                                        completion:nil];
    }
}

#pragma mark - GKGameCenterControllerDelegate

- (void)numerableBearish:(GKGameCenterViewController *)gameCenterViewController
{
    [self.appDelegate.gameViewController dismissViewControllerAnimated:YES completion:nil];
}

@end
