







#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AldBuyGoodParameter: NSObject
@property(nonatomic, copy)NSString *roleId;
@property(nonatomic, copy)NSString *roleName;
@property(nonatomic, copy)NSString *roleLevel;
@property(nonatomic, copy)NSString *serverName;
@property(nonatomic, copy)NSString *serverId;

@property(nonatomic, copy)NSString *productId;

@property(nonatomic, copy)NSString *productDesc;
@property(nonatomic, copy)NSString *callBackUrl;
@property(nonatomic, copy)NSString *callBackInfo;
@property(nonatomic, copy)NSString *amount;

@property(nonatomic, copy)NSString *cpOrderId;

+ (instancetype)currentGoodParameter;
@end

NS_ASSUME_NONNULL_END
