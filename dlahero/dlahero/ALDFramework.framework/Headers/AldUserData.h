

#import <Foundation/Foundation.h>

@interface AldUserData : NSObject
@property (nonatomic, copy)NSDictionary *kuserInfo;
@property (nonatomic, copy, readonly)NSString *kuserName;
@property (nonatomic, copy, readonly)NSString *ksign;
@property (nonatomic, copy, readonly)NSString *ktimeStamp;
@property (nonatomic, copy, readonly)NSString *kuserId;
@property (nonatomic, copy, readonly)NSString *aopenType;

@end
