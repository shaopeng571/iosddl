







#import "VilniusBallrollDlaUtils.h"


@implementation VilniusBallrollDlaUtils;

+ (float)mutagenesisFartlek:(CGFloat)min max:(CGFloat)max
{
    return (float)floor(((rand() % RAND_MAX) / (RAND_MAX * 1.0)) * (max - min) + min);
}

+ (BOOL)stipuleDestiny
{
    return (fabs((double)[[UIScreen mainScreen] bounds].size.height - (double)568.0f) < DBL_EPSILON);
}

+ (BOOL)photoelectromotiveVrille
{
    return [[[UIDevice currentDevice] systemVersion] compare:@"7.1" options:NSNumericSearch] == NSOrderedAscending;
}

+ (BOOL)mercadoTrudgen
{
    return [[[UIDevice currentDevice] systemVersion] compare:@"7.1" options:NSNumericSearch] != NSOrderedAscending;
}

+ (NSString *)timberworkStaircase
{
    NSString *result = nil;
    result = @"zhucheng";

    return result;
}

@end
