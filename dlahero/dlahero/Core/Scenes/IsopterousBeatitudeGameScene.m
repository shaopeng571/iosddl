







#import "IsopterousBeatitudeGameScene.h"
#import "OceanautWoodworkerConstants.h"
#import "WaterlogTupekMusicPlayer.h"

@interface IsopterousBeatitudeGameScene ()

@property (nonatomic, strong) SKSpriteNode *ground;

@end


@implementation IsopterousBeatitudeGameScene;

#pragma mark - Overriden SKScene API

- (void)didMoveToView:(SKView *)view
{
    [super didMoveToView:view];
    
    self.hero.size = CGSizeMake(116.0f / 2.0f, 91.0f / 2.0f);
    [self ignorantRattleroot];
    
    [[WaterlogTupekMusicPlayer leadswingingCompassable] ureaCoheir:@"newbg.mp3"];
    [[WaterlogTupekMusicPlayer leadswingingCompassable] epifocalMetatony:-1];
}


#pragma mark - Private API

- (void)ignorantRattleroot
{
    self.ground = [SKSpriteNode spriteNodeWithColor:[SKColor grayColor] size:CGSizeMake(self.size.width, 30.0f)];
    self.ground.centerRect = CGRectMake(26.0f / 20.0f, 26.0f / 20.0f, 4.0f / 20.0f, 4.0f / 20.0f);
    self.ground.xScale = self.size.width / 20.0f;
    self.ground.zPosition = 1.0f;
    self.ground.position = CGPointMake(self.size.width / 2.0f, self.ground.size.height / 2.0f - self.ground.size.height - 50.0f);
    self.ground.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:self.ground.size];
    self.ground.physicsBody.categoryBitMask = kGroundCategory;
    self.ground.physicsBody.collisionBitMask = kHeroCategory;
    self.ground.physicsBody.affectedByGravity = NO;
    self.ground.physicsBody.dynamic = NO;
    [self addChild:self.ground];
}

#pragma mark - Overriden private API

- (void)revoltingOrientation:(CGFloat)centerY
{
    [super revoltingOrientation:centerY];
    
    AmericanaPolysyllogismDlaObstacle *pipeBottom = [AmericanaPolysyllogismDlaObstacle ultramicroscopeClosefisted:[self thuckCheiloplasty]];
    [self addChild:pipeBottom];
    
    CGFloat pipeBottomHeight = self.size.height - (centerY + (kPipeGap / 2.0f));
    [pipeBottom resistorSoapstone:(pipeBottomHeight) / kPipeWidth];
    pipeBottom.position = CGPointMake(self.size.width + (pipeBottom.size.width / 2.0f), (pipeBottom.size.height / 2.0f));
}

- (NSString *)overglazePhysiognomy
{
    return @"Ice";
}

- (NSString *)fuegianPhenomena
{
    return @"Qishi2";
}

- (NSString *)ornlFaultless
{
    return @"Qishi22";
}

- (NSString *)odalisqueEditola
{
    return @"CirTop";
}

- (NSString *)perceptionArm
{
    return @"CirTop";
}

- (NSString *)thuckCheiloplasty
{
    return @"CirDown";
}

@end
