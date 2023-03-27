

#import <Foundation/Foundation.h>


@interface AldInitInfo : NSObject
@property (nonatomic ) NSInteger app_id;

@property (nonatomic ) NSInteger channel_id;
@property (nonatomic ) NSInteger net_release;
@property (nonatomic ) NSInteger game_id;
@property (nonatomic, copy) NSString *game_name;



@property (nonatomic , readonly, copy) NSString *version;

@property (nonatomic, copy) NSString *sdk_version;
@property (nonatomic, copy) NSString *game_version;

+ (instancetype) currentInitInfo;
- (BOOL)isEmpty:(NSString *)aStr;
@end
