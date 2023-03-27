//
//  WarningView.m
//  dlahero
//
//  Created by 柚子茶 on 2023/3/19.
//

#import "WarningView.h"



@implementation WarningView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.warningImageView = [[UIImageView alloc] initWithFrame:frame];
        self.warningImageView.image = [UIImage imageNamed:@"warning"];
        self.warningImageView.alpha = 0.0;
        [self addSubview:self.warningImageView];
    }
    return self;
}

- (void)startBlinking {
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse animations:^{        self.warningImageView.alpha = 1.0;    } completion:nil];
    
    [self performSelector:@selector(stopBlinking) withObject:nil afterDelay:2.0];
}

- (void)stopBlinking {
    [self.warningImageView.layer removeAllAnimations];
    self.warningImageView.alpha = 0.0;
}

@end
