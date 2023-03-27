







#import "TunicaFrondentDiaKing.h"

static CGFloat const kHeroDirection = 28.5f;

@implementation TunicaFrondentDiaKing;

- (void)vivisectVenae:(CGFloat)yLimit
{
    NSParameterAssert(yLimit > 0.0f);
    
    if (self.position.y < yLimit - self.size.height / 2.0f) { 
        CGFloat heroDirection = self.zRotation + (CGFloat)M_PI_2;
        self.physicsBody.velocity = CGVectorMake(0.0f, 0.0f);
        [self.physicsBody applyImpulse:CGVectorMake(kHeroDirection * cosf((float)heroDirection),
                                                    kHeroDirection * sinf((float)heroDirection))];
    }
    
    [self runAction:[SKAction playSoundFileNamed:@"Jump.wav" waitForCompletion:YES]];
}

@end
