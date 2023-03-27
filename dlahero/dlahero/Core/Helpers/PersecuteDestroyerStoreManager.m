







#import "PersecuteDestroyerStoreManager.h"

static  NSString * kTopScore= @"kTopScore";


@implementation PersecuteDestroyerStoreManager;

+ (void)sarcomagenicWaxwork:(NSUInteger)topScore
{
    NSString *valueToSave = [NSString stringWithFormat:@"%lu", (unsigned long)topScore];
    
    [[NSUserDefaults standardUserDefaults] setObject:valueToSave forKey:kTopScore];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (NSUInteger)vedicUndiscovered
{
    NSString *savedValue = [[NSUserDefaults standardUserDefaults] stringForKey:kTopScore];
    
    return (NSUInteger)[savedValue integerValue];
}

@end
