







#import "LogomachyImpersonateAttackBoss.h"
#import "PsychicsAciniformMenuScene.h"
#import "OceanautWoodworkerConstants.h"
#import "SoubriquetMetacinnabariteStoreManager.h"
#import "LoquacitySuperpotentCenterProvider.h"
#import "WarningView.h"
static CGFloat const kPipeFrequency = 4.0f;

@interface LogomachyImpersonateAttackBoss () <SKPhysicsContactDelegate>

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

@property (nonatomic ,strong) SKAction    *beidaSound;

@end


@implementation LogomachyImpersonateAttackBoss;

#pragma mark - SKScene overriden API

- (void)didMoveToView:(SKView *)view
{
    [super didMoveToView:view];
    
    self.physicsWorld.gravity = CGVectorMake(0.0f, -3.0f);
    self.physicsWorld.contactDelegate = self;
    
    [self boschbokElectrotherapist];
    [self chuffingUnexorcised];
    [self perukeReindoctrination];

    [self rabbitSalaam];
    [self czarevnaPyrolusite];
    [self verdictPiezochemistry];
    
    self.topScores = [SoubriquetMetacinnabariteStoreManager vedicUndiscovered];
    self.topScoreLabel.text = [NSString stringWithFormat:@"%lu", (unsigned long)self.topScores];
    
    self.scoreSound = [SKAction playSoundFileNamed:@"tick.wav" waitForCompletion:NO];
    self.crashSound = [SKAction playSoundFileNamed:@"crash.wav" waitForCompletion:NO];
    self.beidaSound = [SKAction playSoundFileNamed:@"beida.wav" waitForCompletion:NO];

    self.topScoreBeated = NO;
    SKSpriteNode *rect = [SKSpriteNode spriteNodeWithColor:[SKColor redColor] size:self.size];
    rect.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
//       rect.position = CGPointMake(self.size.width / 2, self.size.height / 2);
       [self addChild:rect];

       // 让矩形闪烁
       SKAction *blinkAction = [SKAction sequence:@[
           [SKAction fadeAlphaTo:0.2 duration:0.5],
           [SKAction fadeAlphaTo:1.0 duration:0.5]
       ]];
       SKAction *blinkForever = [SKAction repeatActionForever:blinkAction];
       [rect runAction:blinkForever];

       // 停止闪烁
       dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
           [rect removeAllActions];
           rect.hidden=YES;
       });
}

- (void)update:(NSTimeInterval)currentTime
{
    [super update:currentTime];
    BOOL heroAttack = NO;
    if (self.pipeTop.position.x > 0 && self.lastPipe != self.pipeTop) {
        BOOL heroPassedPipe = NO;
        CGFloat centerY1 = [self.pipeTop.userData[@"centerY1"] floatValue];
        CGFloat centerY2 = [self.pipeTop.userData[@"centerY2"] floatValue];
    
        
        if (self.hero.position.x > self.pipeTop.position.x && self.hero.position.y > centerY2 && self.hero.position.y < centerY2 + kPipeGap){
            heroPassedPipe = YES;
            
            SKLabelNode *numberTop = (SKLabelNode *)[self.pipeMiddle childNodeWithName:@"numberTop"];


            
            NSString *numberTopText = numberTop.text;
            NSLog(@"numberTopText%@",numberTopText);
            NSString *operator = [numberTopText substringToIndex:1]; 
            NSString *num1String = [numberTopText substringFromIndex:1]; 
            NSUInteger num1 = [num1String integerValue];
            if ([operator isEqualToString:@"+"]) {
                heroAttack=YES;
            } else if ([operator isEqualToString:@"-"]) {
                
                SKAction *moveLeft = [SKAction moveByX:-2.0 y:0.0 duration:0.1];
                SKAction *moveRight = [SKAction moveByX:2.0 y:0.0 duration:0.1];
                SKAction *wiggle = [SKAction sequence:@[moveLeft, moveRight]];
                SKAction *stopWiggling = [SKAction runBlock:^{
                    [self.boss removeAllActions];
                }];

                SKAction *wiggleWithStop = [SKAction sequence:@[wiggle, stopWiggling]];
                [self.boss runAction:wiggleWithStop];
                [self runAction:self.beidaSound];

                SKAction *flashAction = [SKAction sequence:@[[SKAction colorizeWithColor:[UIColor redColor] colorBlendFactor:1.0 duration:0.0],
                                                              [SKAction waitForDuration:0.1],
                                                              [SKAction colorizeWithColorBlendFactor:0.0 duration:0.9]]];
                [self.hero runAction:flashAction];

            } else if ([operator isEqualToString:@"*"]) {
                heroAttack=YES;
            } else if ([operator isEqualToString:@"/"]) {
                
                SKAction *moveLeft = [SKAction moveByX:-2.0 y:0.0 duration:0.1];
                SKAction *moveRight = [SKAction moveByX:2.0 y:0.0 duration:0.1];
                SKAction *wiggle = [SKAction sequence:@[moveLeft, moveRight]];
                SKAction *stopWiggling = [SKAction runBlock:^{
                    [self.boss removeAllActions];
                }];

                SKAction *wiggleWithStop = [SKAction sequence:@[wiggle, stopWiggling]];
                [self.boss runAction:wiggleWithStop];
                [self runAction:self.beidaSound];
                SKAction *flashAction = [SKAction sequence:@[[SKAction colorizeWithColor:[UIColor redColor] colorBlendFactor:1.0 duration:0.0],
                                                              [SKAction waitForDuration:0.1],
                                                              [SKAction colorizeWithColorBlendFactor:0.0 duration:0.9]]];
                [self.hero runAction:flashAction];

            }
            if (self.lastPipe != self.pipeTop) {








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
                heroAttack=YES;
            } else if ([operatorBottom isEqualToString:@"-"]) {
                
                SKAction *moveLeft = [SKAction moveByX:-2.0 y:0.0 duration:0.1];
                SKAction *moveRight = [SKAction moveByX:2.0 y:0.0 duration:0.1];
                SKAction *wiggle = [SKAction sequence:@[moveLeft, moveRight]];
                SKAction *stopWiggling = [SKAction runBlock:^{
                    [self.boss removeAllActions];
                }];

                SKAction *wiggleWithStop = [SKAction sequence:@[wiggle, stopWiggling]];
                [self.boss runAction:wiggleWithStop];
                [self runAction:self.beidaSound];

                SKAction *flashAction = [SKAction sequence:@[[SKAction colorizeWithColor:[UIColor redColor] colorBlendFactor:1.0 duration:0.0],
                                                              [SKAction waitForDuration:0.1],
                                                              [SKAction colorizeWithColorBlendFactor:0.0 duration:0.9]]];
                [self.hero runAction:flashAction];

            } else if ([operatorBottom isEqualToString:@"*"]) {
                heroAttack=YES;
            } else if ([operatorBottom isEqualToString:@"/"]) {
                
                SKAction *moveLeft = [SKAction moveByX:-2.0 y:0.0 duration:0.1];
                SKAction *moveRight = [SKAction moveByX:2.0 y:0.0 duration:0.1];
                SKAction *wiggle = [SKAction sequence:@[moveLeft, moveRight]];
                SKAction *stopWiggling = [SKAction runBlock:^{
                    [self.boss removeAllActions];
                }];

                SKAction *wiggleWithStop = [SKAction sequence:@[wiggle, stopWiggling]];
                [self.boss runAction:wiggleWithStop];
                [self runAction:self.beidaSound];
                SKAction *flashAction = [SKAction sequence:@[[SKAction colorizeWithColor:[UIColor redColor] colorBlendFactor:1.0 duration:0.0],
                                                              [SKAction waitForDuration:0.1],
                                                              [SKAction colorizeWithColorBlendFactor:0.0 duration:0.9]]];
                [self.hero runAction:flashAction];

            }
            if (self.lastPipe != self.pipeTop) {
                   






               }
        }
        NSInteger result = self.scores;
        if (heroPassedPipe && self.lastPipe != self.pipeTop) {
            if(heroAttack){
                
                        CGPoint direction = CGPointMake(self.boss.position.x - self.hero.position.x, self.boss.position.y - self.hero.position.y);
                        CGFloat length = sqrt(direction.x * direction.x + direction.y * direction.y);
                        CGPoint normalizedDirection = CGPointMake(direction.x / length, direction.y / length);

                        
                        CGFloat bulletSpeed = 300.0; 
                        CGVector velocity = CGVectorMake(normalizedDirection.x * bulletSpeed, normalizedDirection.y * bulletSpeed);

                        SKSpriteNode *actinomycoticCoruscation = [self vincaContrate];
                        [self addChild:actinomycoticCoruscation];
                        actinomycoticCoruscation.physicsBody.velocity = velocity;
                SKAction *waitAction = [SKAction waitForDuration:length / bulletSpeed];
                SKAction *flashAction = [SKAction sequence:@[[SKAction colorizeWithColor:[UIColor redColor] colorBlendFactor:1.0 duration:0.0],
                                                              [SKAction waitForDuration:0.5],
                                                              [SKAction colorizeWithColorBlendFactor:0.0 duration:0.9]]];
                [self.boss runAction:[SKAction sequence:@[waitAction, flashAction]]];
                
               self.scores=result+1;
                [self runAction:self.scoreSound];
            }else{
                result=result-1;
                if((result)<0){
                    self.scores=0;
                }else{
                    self.scores=result;
                }
            }
           
          
            
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
             
            }
          
        }
    }
}

#pragma mark - Setup sprites
- (SKSpriteNode *)vincaContrate {
    SKSpriteNode *actinomycoticCoruscation = [SKSpriteNode spriteNodeWithImageNamed:@"bullet_image_name"];
    actinomycoticCoruscation.size = CGSizeMake(10.0f, 10.0f);
    actinomycoticCoruscation.position = self.hero.position;
    actinomycoticCoruscation.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:actinomycoticCoruscation.size];
    actinomycoticCoruscation.physicsBody.categoryBitMask = kBulletCategory;
    actinomycoticCoruscation.physicsBody.contactTestBitMask = kBossCategory;
    actinomycoticCoruscation.physicsBody.collisionBitMask = 0;
    actinomycoticCoruscation.physicsBody.affectedByGravity = NO;
    return actinomycoticCoruscation;
}

- (SKAction *)lagniappeInflammation {
    SKAction *move = [SKAction moveTo:CGPointMake(self.size.width + 50, self.hero.position.y) duration:2.0f];
    SKAction *remove = [SKAction removeFromParent];
    return [SKAction sequence:@[move, remove]];
}

- (void)boschbokElectrotherapist
{
    SKTexture *backgroundTexture = [SKTexture textureWithImageNamed:[self overglazePhysiognomy]];
    SKSpriteNode *background = [SKSpriteNode spriteNodeWithTexture:backgroundTexture size:self.view.frame.size];
    background.position = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame));
    [self addChild:background];
}

- (void)chuffingUnexorcised
{
    self.hero = [TunicaFrondentDiaKing spriteNodeWithImageNamed:@"Qishi2"];
    self.hero.size = CGSizeMake(101.0f / 2.0f, 75.0f / 2.0f);
    self.hero.position = CGPointMake(50.0f, self.size.height / 2.25f);
    
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
- (void)perukeReindoctrination
{
    self.boss = [SKSpriteNode spriteNodeWithImageNamed:@"boss_image_name"];
    self.boss.size = CGSizeMake(101.0f / 2.0f, 75.0f / 2.0f);
    self.boss.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:self.boss.size];
    
    self.boss.physicsBody.affectedByGravity = NO; 
    self.boss.physicsBody.dynamic = NO; 
    [self.boss setPosition:CGPointMake(self.size.width - 50.0f, self.size.height / 2)];



    NSArray *animationFrames = @[[SKTexture textureWithImageNamed:@"boss_image_name"],
                                     [SKTexture textureWithImageNamed:@"boss_image_name"]];
    SKAction *bossAction = [SKAction repeatActionForever:[SKAction animateWithTextures:animationFrames
                                                                          timePerFrame:0.1f
                                                                                resize:NO
                                                                               restore:YES]];
    [self.boss runAction:bossAction withKey:@"flyingBoss"];
    [self addChild:self.boss];
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
    SKPhysicsBody *firstBody, *secondBody;
       
       if (contact.bodyA.categoryBitMask < contact.bodyB.categoryBitMask) {
           firstBody = contact.bodyA;
           secondBody = contact.bodyB;
       } else {
           firstBody = contact.bodyB;
           secondBody = contact.bodyA;
       }
       
       
       if ((firstBody.categoryBitMask & kBulletCategory) != 0 &&
           (secondBody.categoryBitMask & kBossCategory) != 0) {
           [self actinomycoticCoruscation:(SKSpriteNode *)firstBody.node didHitBoss:(SKSpriteNode *)secondBody.node];
       }
}
- (void)actinomycoticCoruscation:(SKSpriteNode *)actinomycoticCoruscation didHitBoss:(SKSpriteNode *)boss
{
    
    [actinomycoticCoruscation removeFromParent];
    
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
    numberTop.zPosition = 0;
    
    SKLabelNode *numberBottom = [SKLabelNode labelNodeWithText:[NSString stringWithFormat:@"%@%lu",  selectedOperatorBottom,(unsigned long)number2]];
    numberBottom.fontName = @"Arial";
    numberBottom.fontSize = 20;
    numberBottom.fontColor = [SKColor whiteColor];
    numberBottom.zPosition =0;
    
    numberTop.name = @"numberTop";
    numberBottom.name = @"numberBottom";
    
    CGPoint gapCenter = [self endodermisRaguly:centerY1 centerY2:centerY2];
    
    [self.pipeMiddle addChild:numberTop];
    [self.pipeMiddle addChild:numberBottom];
    
    
    CGFloat numberTopY = kPipeGap / 3.0f;
    CGFloat numberBottomY = -kPipeGap / 3.0f;
    
    
    numberTop.position = CGPointMake(0, gapCenter.y - self.pipeMiddle.position.y + numberTopY);
    numberBottom.position = CGPointMake(0, gapCenter.y - self.pipeMiddle.position.y + numberBottomY);
    numberTop.hidden = YES;
    numberBottom.hidden = YES;

    
    numberTop.name = @"numberTop";
    numberBottom.name = @"numberBottom";
    SKSpriteNode *warningImage = [SKSpriteNode spriteNodeWithImageNamed:@"warining_image"];
    warningImage.size=CGSizeMake(30.0f, 25.0f);
    warningImage.scale = 1;

    if (randomIndex2 == 0) {



        warningImage.position = CGPointMake(0, gapCenter.y - self.pipeMiddle.position.y + numberBottomY);
        warningImage.zPosition = numberTop.zPosition + 1; 
        [self.pipeMiddle addChild:warningImage];

    }else{
        warningImage.position = CGPointMake(0, gapCenter.y - self.pipeMiddle.position.y + numberTopY);
        warningImage.zPosition = numberBottom.zPosition + 1; 
        [self.pipeMiddle addChild:warningImage];

    }
   
    
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
        [SoubriquetMetacinnabariteStoreManager sarcomagenicWaxwork:self.topScores];
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
