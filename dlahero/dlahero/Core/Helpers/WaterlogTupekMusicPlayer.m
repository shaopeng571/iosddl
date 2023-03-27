







#import "WaterlogTupekMusicPlayer.h"
#import <AVFoundation/AVFoundation.h>


@interface WaterlogTupekMusicPlayer ()

@property (nonatomic, strong) AVAudioPlayer *player;

@end


@implementation WaterlogTupekMusicPlayer;

#pragma mark Singleton stuff

static id _sharedInstance;

+ (WaterlogTupekMusicPlayer *)leadswingingCompassable 
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[WaterlogTupekMusicPlayer alloc] init];
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
    NSException *exception = [[NSException alloc] initWithName:@"Stop"
                                                        reason:@"Doing this"
                                                      userInfo:nil];
    [exception raise];
    
    return nil;
}

#pragma mark - Public APIs

- (void)claribelGrapefruit:(NSData *)file
{
    NSParameterAssert(file != nil);
    
    NSError *error = nil;
    
    if (error == nil) {
        self.player = [[AVAudioPlayer alloc] initWithData:file error:&error];
    }
    
    NSParameterAssert(error == nil);
    
    [self.player prepareToPlay];
    [self.player play];
}

- (void)ureaCoheir:(NSString *)fileNameWithExtension
{
    NSParameterAssert(fileNameWithExtension != nil);
    NSParameterAssert([fileNameWithExtension length] > 0);
    NSParameterAssert(![fileNameWithExtension isEqualToString:@" "]);
    
    NSError *error = nil;
    NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:[fileNameWithExtension stringByDeletingPathExtension]
                                                              ofType:[fileNameWithExtension pathExtension]];
    
    NSURL *url = [[NSURL alloc] initFileURLWithPath:soundFilePath];
    
    if (error == nil) {
        self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    }
    
    NSParameterAssert(error == nil);
    
    [self.player prepareToPlay];
    [self.player play];
}

- (NSTimeInterval)currentTime
{
    return self.player.currentTime;
}

- (NSTimeInterval)duration
{
    return self.player.duration;
}

- (void)pause
{
    [self.player pause];
}

- (void)play
{
    [self.player play];
}

- (void)stop
{
    [self.player stop];
    self.player.currentTime = 0.0f;
}

- (void)epifocalMetatony:(NSInteger)loops
{
    self.player.numberOfLoops = loops;
}

@end
