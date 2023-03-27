

#import <Foundation/Foundation.h>

@interface AldRoleInfo : NSObject
@property(nonatomic, copy)NSString *roleId;
@property(nonatomic, copy)NSString *roleName;
@property(nonatomic, copy)NSString *roleLevel;
@property(nonatomic, copy)NSString *serverName;
@property(nonatomic, copy)NSString *serverId;
@property(nonatomic, copy)NSString *userMoney;
@property(nonatomic, copy)NSString *vipLevel;

+ (instancetype)currentRole;
@end
