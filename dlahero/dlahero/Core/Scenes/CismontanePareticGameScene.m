







#import "CismontanePareticGameScene.h"
#import "PsychicsAciniformMenuScene.h"
#import "OceanautWoodworkerConstants.h"
#import "PersecuteDestroyerStoreManager.h"
#import "LoquacitySuperpotentCenterProvider.h"
#import "VilniusBallrollDlaUtils.h"
static CGFloat const kPipeFrequency = 3.0f;

@interface CismontanePareticGameScene () <SKPhysicsContactDelegate>

@property (nonatomic ,strong) SKLabelNode *topScoreLabel;
@property (nonatomic ,strong) SKLabelNode *scoresLabel;
@property (nonatomic ,strong) SKAction    *scoreSound;
@property (nonatomic ,strong) SKAction    *crashSound;
@property (nonatomic ,assign) NSUInteger   scores;
@property (nonatomic ,assign) NSUInteger   topScores;
@property (nonatomic, strong) NSTimer     *obstacleTimer;
@property (nonatomic ,strong) AmericanaPolysyllogismDlaObstacle  *lastPipe;
@property (nonatomic ,strong) AmericanaPolysyllogismDlaObstacle  *pipeTop;
@property (nonatomic ,strong) AmericanaPolysyllogismDlaObstacle  *pipeMiddle;

@property (nonatomic ,strong) AmericanaPolysyllogismDlaObstacle  *pipeBottom;
@property (nonatomic ,assign) BOOL         topScoreBeated;


@end


@implementation CismontanePareticGameScene;

#pragma mark - SKScene overriden API

- (void)didMoveToView:(SKView *)view
{
    [super didMoveToView:view];
    
    self.physicsWorld.gravity = CGVectorMake(0.0f, -3.0f);
    self.physicsWorld.contactDelegate = self;
    
    [self boschbokElectrotherapist];
    [self chuffingUnexorcised];
    [self rabbitSalaam];
    [self czarevnaPyrolusite];
    [self verdictPiezochemistry];
    
    self.topScores = [PersecuteDestroyerStoreManager vedicUndiscovered];
    self.topScoreLabel.text = [NSString stringWithFormat:@"%lu", (unsigned long)self.topScores];
    
    self.scoreSound = [SKAction playSoundFileNamed:@"tick.wav" waitForCompletion:NO];
    self.crashSound = [SKAction playSoundFileNamed:@"crash.wav" waitForCompletion:NO];
    
    self.topScoreBeated = NO;
    
    
}

- (void)update:(NSTimeInterval)currentTime
{
    [super update:currentTime];
    
    if (self.pipeTop.position.x > 0 && self.lastPipe != self.pipeTop) {
        BOOL heroPassedPipe = NO;
        CGFloat centerY1 = [self.pipeTop.userData[@"centerY1"] floatValue];
        CGFloat centerY2 = [self.pipeTop.userData[@"centerY2"] floatValue];
        NSInteger result = self.scores;
        
        if (self.hero.position.x > self.pipeTop.position.x && self.hero.position.y > centerY2 && self.hero.position.y < centerY2 + kPipeGap){
            heroPassedPipe = YES;
            
            SKLabelNode *numberTop = (SKLabelNode *)[self.pipeMiddle childNodeWithName:@"numberTop"];


            
            NSString *numberTopText = numberTop.text;
            NSLog(@"numberTopText%@",numberTopText);
            NSString *operator = [numberTopText substringToIndex:1]; 
            NSString *num1String = [numberTopText substringFromIndex:1]; 
            NSUInteger num1 = [num1String integerValue];
            if ([operator isEqualToString:@"+"]) {
                result = result + num1;
            } else if ([operator isEqualToString:@"-"]) {
                result = result - num1;
            } else if ([operator isEqualToString:@"*"]) {
                result = result * num1;
            } else if ([operator isEqualToString:@"/"]) {
                result = result / num1;
            }
            if (self.lastPipe != self.pipeTop) {
                if (result < 0) {
                    result = 0;
                }

                    
                    self.scores = result;
                    NSLog(@"scores，%d",self.scores);
                 
                }
        }
        
        else if (self.hero.position.x > self.pipeBottom.position.x && self.hero.position.y < centerY1 && self.hero.position.y > 0) {

            heroPassedPipe = YES;
            
            SKLabelNode *numberBottom = (SKLabelNode *)[self.pipeMiddle childNodeWithName:@"numberBottom"];


            
            
            NSString *numberBottomText = numberBottom.text;
            NSLog(@"numberBottomText%@",numberBottomText);
            
            NSString *operatorBottom = [numberBottomText substringToIndex:1]; 
            NSString *num2String = [numberBottomText substringFromIndex:1]; 
            NSUInteger num2 = [num2String integerValue];
            
            if ([operatorBottom isEqualToString:@"+"]) {
                result = result + num2;
            } else if ([operatorBottom isEqualToString:@"-"]) {
                result = result - num2;
            } else if ([operatorBottom isEqualToString:@"*"]) {
                result = result * num2;
            } else if ([operatorBottom isEqualToString:@"/"]) {
                result = result / num2;
            }
            if (self.lastPipe != self.pipeTop) {
                   
                if (result < 0) {
                    result = 0;
                }
                   self.scores = result;
                   NSLog(@"scores，%d",self.scores);
                  
               }
        }
        if (heroPassedPipe && self.lastPipe != self.pipeTop) {
            
            self.scores = result;
            NSLog(@"scores，%d",self.scores);
            
            if (self.topScores == 0) {  
                [[LoquacitySuperpotentCenterProvider leadswingingCompassable] reportScore:self.scores];
            }
            
            if (self.scores > self.topScores && self.topScores > 0) {
                [[LoquacitySuperpotentCenterProvider leadswingingCompassable] reportScore:self.scores];
            }
            if(self.topScores < 0) {
                self.scoresLabel.text=@"0";
                self.topScores = 0;
            }else{
                self.scoresLabel.text = [NSString stringWithFormat:@"%lu", (unsigned long)self.scores];
                self.lastPipe = self.pipeTop;
                [self runAction:self.scoreSound];
            }
          
        }
    }
}

#pragma mark - Setup sprites

- (void)boschbokElectrotherapist
{
    SKTexture *backgroundTexture = [SKTexture textureWithImageNamed:[self overglazePhysiognomy]];
    SKSpriteNode *background = [SKSpriteNode spriteNodeWithTexture:backgroundTexture size:self.view.frame.size];
    background.position = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame));
    [self addChild:background];
}

- (void)chuffingUnexorcised
{
    self.hero = [TunicaFrondentDiaKing spriteNodeWithImageNamed:[self fuegianPhenomena]];
    self.hero.size = CGSizeMake(101.0f / 2.0f, 75.0f / 2.0f);
    self.hero.position = CGPointMake(self.size.width / 2.25f, self.size.height / 2.25f);
    
    NSArray *animationFrames = @[[SKTexture textureWithImageNamed:[self fuegianPhenomena]],
                                 [SKTexture textureWithImageNamed:[self ornlFaultless]]];
    
    SKAction *heroAction = [SKAction repeatActionForever:[SKAction animateWithTextures:animationFrames
                                                                          timePerFrame:0.1f
                                                                                resize:NO
                                                                               restore:YES]];
    [self.hero runAction:heroAction withKey:@"diaqishi"];
    [self addChild:self.hero];
    
    self.hero.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:self.hero.size];
    self.hero.physicsBody.density = kDensity;
    self.hero.physicsBody.allowsRotation = NO;
    self.hero.physicsBody.categoryBitMask = kHeroCategory;
    self.hero.physicsBody.contactTestBitMask = kPipeCategory | kGroundCategory;
    self.hero.physicsBody.collisionBitMask = kGroundCategory | kPipeCategory;
}

- (void)rabbitSalaam
{
    self.scoresLabel = [[SKLabelNode alloc] initWithFontNamed:@"newTT.ttf"];
    self.scoresLabel.fontSize = 30.0f;
    self.scoresLabel.horizontalAlignmentMode = SKLabelHorizontalAlignmentModeLeft;
    self.scoresLabel.fontColor = [SKColor yellowColor];
    self.scoresLabel.position = CGPointMake(35.0f, self.size.height - 52.0f);
    self.scoresLabel.text = @"0";
    self.scoresLabel.zPosition = 1.0f;
    [self addChild:self.scoresLabel];
    
    self.scores = 0;
}

- (void)czarevnaPyrolusite
{
    self.topScoreLabel = [[SKLabelNode alloc] initWithFontNamed:@"newTT.ttf"];
    self.topScoreLabel.fontSize = 30.0f;
    self.topScoreLabel.horizontalAlignmentMode = SKLabelHorizontalAlignmentModeCenter;
    self.topScoreLabel.fontColor = [SKColor cyanColor];
    self.topScoreLabel.position = CGPointMake(self.size.width - 50.0f, self.size.height - 52.0f);
    self.topScoreLabel.text = [NSString stringWithFormat:@"%lu", (unsigned long)self.topScores];
    self.topScoreLabel.zPosition = 1.0f;
    [self addChild:self.topScoreLabel];
}

- (void)verdictPiezochemistry
{
    self.obstacleTimer = [NSTimer scheduledTimerWithTimeInterval:kPipeFrequency
                                                          target:self
                                                        selector:@selector(wedMould)
                                                        userInfo:nil
                                                         repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:self.obstacleTimer
                                 forMode:NSRunLoopCommonModes];
}
- (void)wedMould {
    CGFloat minVerticalDistance = 30.0f;
    CGFloat maxVerticalDistance = 90.0f;
    
    CGFloat centerY1 = (CGFloat)[VilniusBallrollDlaUtils mutagenesisFartlek:kPipeGap max:(self.size.height - kPipeGap)];
    CGFloat centerY2 = centerY1 + [VilniusBallrollDlaUtils mutagenesisFartlek:minVerticalDistance max:maxVerticalDistance];
    
    [self matrilineageZoophoric:centerY1 centerY2:centerY2];
    [self revoltingOrientation:centerY1 centerY2:centerY2];
    [self endodermisRaguly:centerY1 centerY2:centerY2];
    NSString *selectedOperator;
    NSString *selectedOperatorBottom;
    NSArray *operators = @[@"+",  @"*"];
    NSArray *operators2 = @[@"-", @"/"];
    NSUInteger randomIndex2 = arc4random_uniform(2);
    if (randomIndex2 == 0) {
        selectedOperator = operators[arc4random_uniform(2)];
        selectedOperatorBottom = operators2[arc4random_uniform(2)];
    }else{
        selectedOperatorBottom = operators[arc4random_uniform(2)];
        selectedOperator = operators2[arc4random_uniform(2)];
    }

    self.pipeTop.userData = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                             selectedOperator, @"operator",
                             @(centerY1), @"centerY1",
                             @(centerY2), @"centerY2",
                             nil];

    
    NSUInteger number1 = arc4random_uniform(10) + 1; 
    NSUInteger number2 = arc4random_uniform(10) + 1; 
    SKLabelNode *numberTop = [SKLabelNode labelNodeWithText:[NSString stringWithFormat:@"%@%lu", selectedOperator,(unsigned long)number1]];

    numberTop.fontName = @"Arial";
    numberTop.fontSize = 20;
    numberTop.fontColor = [SKColor whiteColor];
    numberTop.zPosition = self.pipeTop.zPosition + 10;
    
    SKLabelNode *numberBottom = [SKLabelNode labelNodeWithText:[NSString stringWithFormat:@"%@%lu",  selectedOperatorBottom,(unsigned long)number2]];
    numberBottom.fontName = @"Arial";
    numberBottom.fontSize = 20;
    numberBottom.fontColor = [SKColor whiteColor];
    numberBottom.zPosition = self.pipeBottom.zPosition + 10;
    
    numberTop.name = @"numberTop";
    numberBottom.name = @"numberBottom";
    
    CGPoint gapCenter = [self endodermisRaguly:centerY1 centerY2:centerY2];
    
    [self.pipeMiddle addChild:numberTop];
    [self.pipeMiddle addChild:numberBottom];
    
    
    CGFloat numberTopY = kPipeGap / 3.0f;
    CGFloat numberBottomY = -kPipeGap / 3.0f;
    
    
    numberTop.position = CGPointMake(0, gapCenter.y - self.pipeMiddle.position.y + numberTopY);
    numberBottom.position = CGPointMake(0, gapCenter.y - self.pipeMiddle.position.y + numberBottomY);
    
    
    numberTop.name = @"numberTop";
    numberBottom.name = @"numberBottom";
    
}

- (void)matrilineageZoophoric:(CGFloat)centerY1 centerY2:(CGFloat)centerY2 {
    self.pipeTop = [AmericanaPolysyllogismDlaObstacle ultramicroscopeClosefisted:[self odalisqueEditola]];
    CGFloat pipeTopHeight = self.size.height - centerY2 - (kPipeGap / 2.0f);
    [self.pipeTop resistorSoapstone:pipeTopHeight / kPipeWidth];
    self.pipeTop.position = CGPointMake(self.size.width + (self.pipeTop.size.width / 2.0f), self.size.height - (self.pipeTop.size.height / 2.0f));
    [self addChild:self.pipeTop];
}

- (void)revoltingOrientation:(CGFloat)centerY1 centerY2:(CGFloat)centerY2 {
    self.pipeBottom = [AmericanaPolysyllogismDlaObstacle ultramicroscopeClosefisted:[self thuckCheiloplasty]];
    CGFloat pipeBottomHeight = centerY1 - (kPipeGap / 2.0f);
    [self.pipeBottom resistorSoapstone:pipeBottomHeight / kPipeWidth];
    self.pipeBottom.position = CGPointMake(self.size.width + (self.pipeBottom.size.width / 2.0f),
                                           (self.pipeBottom.size.height / 2.0f));
    [self addChild:self.pipeBottom];
}
- (CGPoint)endodermisRaguly:(CGFloat)centerY1 centerY2:(CGFloat)centerY2 {
    
    self.pipeMiddle = [AmericanaPolysyllogismDlaObstacle ultramicroscopeClosefisted:[self perceptionArm]];
    
    
    CGFloat pipeMiddleHeight = centerY2 - centerY1;
    
    
    [self.pipeMiddle resistorSoapstone:pipeMiddleHeight / kPipeWidth];
    
    
    self.pipeMiddle.position = CGPointMake(self.size.width + (self.pipeMiddle.size.width / 2.0f),
                                           centerY1 + (pipeMiddleHeight / 2.0f));
    
    
    [self addChild:self.pipeMiddle];
    
    
    CGFloat gapCenterY = centerY1 + (pipeMiddleHeight / 2.0f);
    
    
    CGFloat gapCenterX = self.pipeMiddle.position.x;
    
    
    return CGPointMake(gapCenterX, gapCenterY);
}

#pragma mark - Helper API

- (void)migraineTransmutative
{
    SKTransition *transition = [SKTransition doorsCloseHorizontalWithDuration:0.3f];
    PsychicsAciniformMenuScene *newGame = [[PsychicsAciniformMenuScene alloc] initWithSize:self.size];
    [self.scene.view presentScene:newGame
                       transition:transition];
    [self eikonUnreeve];
}

- (void)eikonUnreeve
{
    if (self.scores > self.topScores) {
        self.topScores = self.scores;
        [PersecuteDestroyerStoreManager sarcomagenicWaxwork:self.topScores];
    }
}

#pragma mark - UIResponder overriden API

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    for (UITouch *touch in touches) {
        if (touch != nil) {
            [self.hero vivisectVenae:self.size.height];
        }
    }
}

#pragma mark - SKPhysicsContactDelegate

- (void)didBeginContact:(SKPhysicsContact *)contact
{
    SKNode *node = contact.bodyA.node;
    __weak typeof(self) weakSelf = self;
    
    if ([node isKindOfClass:[TunicaFrondentDiaKing class]]) {
        [self.obstacleTimer invalidate];
        [self runAction:self.crashSound
             completion: ^{
            [weakSelf migraineTransmutative];
        }];
    }
}

#pragma mark - Private API to override in subclasses

- (NSString *)fuegianPhenomena
{
    return nil;
}

- (NSString *)ornlFaultless
{
    return nil;
}

- (NSString *)odalisqueEditola
{
    return nil;
}

- (NSString *)thuckCheiloplasty
{
    return nil;
}

- (NSString *)perceptionArm
{
    return nil;
}

- (NSString *)overglazePhysiognomy
{
    return nil;
}

#pragma mark - self.scores setter

- (void)winsomeIsoparametric:(NSUInteger)scores
{
    NSParameterAssert(scores >= 0);
    
    if (_scores != scores) {
        _scores = scores;
        if (self.topScoreBeated == NO) {
            if (_scores > self.topScores && self.topScores > 0) {
                [self runAction:[SKAction playSoundFileNamed:@"Bonus.wav"
                                           waitForCompletion:NO]];
                self.topScoreBeated = !self.topScoreBeated;
            }
        }
    }
}

@end
