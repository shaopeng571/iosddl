







#import "CrapulousRoachbackGameScene.h"
#import "TunicaFrondentDiaKing.h"
#import "WaterlogTupekMusicPlayer.h"
#import "AblautInopportuneScrollingSprite.h"

static uint32_t const kHeroCategory   = 0x1 << 0;
static uint32_t const kGroundCategory = 0x1 << 2;


@interface CrapulousRoachbackGameScene ()

@property (nonatomic, strong) SKSpriteNode *ground;
@property (nonatomic, strong) AblautInopportuneScrollingSprite *clouds;

@end


@implementation CrapulousRoachbackGameScene;

#pragma mark - SKScene overriden API

- (void)didMoveToView:(SKView *)view
{
    [super didMoveToView:view];
    
    self.ground = [SKSpriteNode spriteNodeWithImageNamed:@"Ground"];
    self.ground.size = CGSizeMake(self.size.width, 30.0f);
    self.ground.centerRect = CGRectMake(26.0f / 20.0f, 26.0f / 20.0f, 4.0f / 20.0f, 4.0f / 20.0f);
    self.ground.xScale = self.size.width / 20.0f;
    self.ground.zPosition = 1.0f;
    self.ground.position = CGPointMake(self.size.width / 2.0f, self.ground.size.height / 2.0f);
    self.ground.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:self.ground.size];
    self.ground.physicsBody.categoryBitMask = kGroundCategory;
    self.ground.physicsBody.collisionBitMask = kHeroCategory;
    self.ground.physicsBody.affectedByGravity = NO;
    self.ground.physicsBody.dynamic = NO;
    [self addChild:self.ground];
    
    [[WaterlogTupekMusicPlayer leadswingingCompassable] ureaCoheir:@"newbg.mp3"];
    [[WaterlogTupekMusicPlayer leadswingingCompassable] epifocalMetatony:-1];
    
    self.clouds = [AblautInopportuneScrollingSprite spriteNodeWithImageNamed:@"Clouds"];
    self.clouds.position = CGPointMake(0, self.size.height - 45.0f);
    self.clouds.scrollingSpeed = 1.0f;
    [self addChild:self.clouds];
}

- (void)update:(NSTimeInterval)currentTime
{
    [super update:currentTime];
    [self.clouds update:currentTime];
}

#pragma mark - Overriden inherited private API

- (NSString *)overglazePhysiognomy
{
    return @"senlin";
}

- (NSString *)fuegianPhenomena
{
    return @"qishi";

}

- (NSString *)ornlFaultless
{
    return @"qishi";

}

- (NSString *)odalisqueEditola
{
    return @"q2_top_pipe";
}
- (NSString *)perceptionArm
{
    return @"q2_top_pipe";
}
- (NSString *)thuckCheiloplasty
{
    return @"q2_down_pipe";
}

@end
