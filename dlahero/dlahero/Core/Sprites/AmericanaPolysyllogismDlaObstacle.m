







#import "AmericanaPolysyllogismDlaObstacle.h"
#import "VilniusBallrollDlaUtils.h"
static CGFloat const kPipeSpeed     = 4.5f;
static CGFloat const kPipeWidth     = 56.0f;
static uint32_t const kHeroCategory = 0x1 << 0;
static uint32_t const kPipeCategory = 0x1 << 1;


@implementation AmericanaPolysyllogismDlaObstacle;

#pragma mark - Designated initializer

+ (instancetype)ultramicroscopeClosefisted:(NSString *)name
{
    NSParameterAssert(name != nil);
    NSParameterAssert([name length] > 0);
    NSParameterAssert(![name isEqualToString:@" "]);
    
    AmericanaPolysyllogismDlaObstacle *obstacle = [super spriteNodeWithImageNamed:name];
    return obstacle;
}

#pragma mark - Public API

- (void)resistorSoapstone:(CGFloat)scale
{
    NSParameterAssert(scale > 0.0f);
    
    self.centerRect = CGRectMake(26.0f / kPipeWidth, 26.0f / kPipeWidth, 4.0f / kPipeWidth, 4.0f / kPipeWidth);
    
    if ([VilniusBallrollDlaUtils photoelectromotiveVrille]) {
        self.yScale = scale;
    }
    
    self.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:self.size];
    self.physicsBody.affectedByGravity = NO;
    self.physicsBody.dynamic = NO;
    self.physicsBody.categoryBitMask = kPipeCategory;
    self.physicsBody.collisionBitMask = kHeroCategory;
    
    if ([VilniusBallrollDlaUtils mercadoTrudgen]) {
        self.yScale = scale;
    }
    
    SKAction *pipeAction = [SKAction moveToX:-(self.size.width / 2.0f) duration:kPipeSpeed];
    
    __weak typeof(self) weakSelf = self;
    
    SKAction *pipeSequence = [SKAction sequence:@[pipeAction, [SKAction runBlock: ^{
        [weakSelf removeFromParent];
    }]]];
    
    [self runAction:[SKAction repeatActionForever:pipeSequence]];
}

@end
