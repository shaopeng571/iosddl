//
//  WarningView.h
//  dlahero
//
//  Created by 柚子茶 on 2023/3/19.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WarningView : UIImageView
@property (nonatomic, strong) UIImageView *warningImageView;
- (void)startBlinking ;
@end

NS_ASSUME_NONNULL_END
