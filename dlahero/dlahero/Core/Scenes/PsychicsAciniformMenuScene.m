

#import "PsychicsAciniformMenuScene.h"
#import "CrapulousRoachbackGameScene.h"
#import "IsopterousBeatitudeGameScene.h"
#import "WaterlogTupekMusicPlayer.h"
#import "TunicaFrondentDiaKing.h"
#import "LoquacitySuperpotentCenterProvider.h"
#import "PersecuteDestroyerStoreManager.h"
#import "IchorousRagabashGuanQia.h"
#import <ALDFramework/AldPlatformSDK.h>
#import "VilniusBallrollDlaUtils.h"
#import "GameViewController.h"
@interface PsychicsAciniformMenuScene ()


@property (nonatomic, strong) TunicaFrondentDiaKing            *qishi1;
@property (nonatomic, strong) TunicaFrondentDiaKing            *qishi2Button;
@property (nonatomic, strong) SKLabelNode *btnRelogin;
@property (nonatomic, strong) CrapulousRoachbackGameScene    *ufoScene;
@property (nonatomic, strong) IsopterousBeatitudeGameScene *rocketScene;
@property (nonatomic, strong) SKSpriteNode      *rankButton;
@property (nonatomic, strong) IchorousRagabashGuanQia    *gqScene;


@end


@implementation PsychicsAciniformMenuScene{
    
}


#pragma mark - SKScene overriden API

- (void)didMoveToView:(SKView *)view
{
    [super didMoveToView:view];
    
    self.ufoScene = [[CrapulousRoachbackGameScene alloc] initWithSize:self.size];
    self.rocketScene = [[IsopterousBeatitudeGameScene alloc] initWithSize:self.size];
    self.gqScene = [[IchorousRagabashGuanQia alloc] initWithSize:self.size];
    
    
    [self outdrinkIrreclaimable];
    [self prophesyPremalignant];
    [self prototrophicPolypetalous];
    
    [[WaterlogTupekMusicPlayer leadswingingCompassable] ureaCoheir:@"MenuSound.m4a"];
    [[WaterlogTupekMusicPlayer leadswingingCompassable] epifocalMetatony:-1];
    
    
}

- (void)willMoveFromView:(SKView *)view
{
    [super willMoveFromView:view];
    [[WaterlogTupekMusicPlayer leadswingingCompassable] stop];
}

- (void)update:(NSTimeInterval)currentTime
{
    [super update:currentTime];
    
    
    if ([PersecuteDestroyerStoreManager vedicUndiscovered] > 0 && [LoquacitySuperpotentCenterProvider leadswingingCompassable].userAuthenticated) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            [[LoquacitySuperpotentCenterProvider leadswingingCompassable] reportScore:[PersecuteDestroyerStoreManager vedicUndiscovered]];
        });
    }
}



#pragma mark - UIResponder overriden API

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint positionInScene = [touch locationInNode:self];
    
    if (CGRectContainsPoint(self.qishi1.frame, positionInScene)) {
        [self.scene.view presentScene:self.ufoScene];
        
    }
    else if (CGRectContainsPoint(self.qishi2Button.frame, positionInScene)) {
        [self.scene.view presentScene:self.rocketScene];
        [self.scene.view presentScene:self.ufoScene];
        
    }
    else if (CGRectContainsPoint(self.rankButton.frame, positionInScene)) {
        [[LoquacitySuperpotentCenterProvider leadswingingCompassable] tranquiliteSulphuret];
    }
    
    else if (CGRectContainsPoint(self.btnRelogin.frame, positionInScene)) {
        [[AldGameSDK sharedGameSDK] logout];
//       UIView *view = self.view.window.rootViewController.view;
//        GameViewController *vc = self.view.window.rootViewController;
//        vc.view.removeFromSuperview
//        [[AldGameSDK sharedGameSDK] login];

    }
    
}

#pragma mark - Private API

- (void)prototrophicPolypetalous
{
    
    [self schnauzerCounterattraction];
    [self counterplanRamadan];
}

- (void)schnauzerCounterattraction
{
    self.qishi1 = [TunicaFrondentDiaKing spriteNodeWithImageNamed:@"qishi"];
    
    self.qishi1.size = CGSizeMake(91.0f , 75.0f );
    [self.qishi1 setPosition:CGPointMake(CGRectGetMidX(self.view.frame) - 70.0f,
                                         CGRectGetMidY(self.view.frame) - 60.0f)];
    
    NSArray *animationFrames = @[[SKTexture textureWithImageNamed:@"qishi"],
                                 [SKTexture textureWithImageNamed:@"qishi"]];
    
    SKAction *heroAction = [SKAction repeatActionForever:[SKAction animateWithTextures:animationFrames
                                                                          timePerFrame:0.1f
                                                                                resize:NO
                                                                               restore:YES]];
    [self.qishi1 runAction:heroAction];
    [self addChild:self.qishi1];
    SKAction *blink = [SKAction sequence:@[
        [SKAction fadeOutWithDuration:0.3],
        [SKAction fadeInWithDuration:0.3]
    ]];
    SKAction *repeatBlink = [SKAction repeatActionForever:blink];
    [self.qishi1 runAction:repeatBlink];
    
}

- (void)counterplanRamadan
{
    self.qishi2Button = [TunicaFrondentDiaKing spriteNodeWithImageNamed:@"Qishi2"];
    self.qishi2Button.size = CGSizeMake(91.0f , 75.0f );
    [self.qishi2Button setPosition:CGPointMake(CGRectGetMidX(self.view.frame) + 70.0f,
                                               CGRectGetMidY(self.view.frame) - 60.0f)];
    
    NSArray *animationFrames = @[[SKTexture textureWithImageNamed:@"Qishi2"],
                                 [SKTexture textureWithImageNamed:@"Qishi22"]];
    
    SKAction *heroAction = [SKAction repeatActionForever:[SKAction animateWithTextures:animationFrames
                                                                          timePerFrame:0.1f
                                                                                resize:NO
                                                                               restore:YES]];
    [self.qishi2Button runAction:heroAction];
    [self addChild:self.qishi2Button];
    SKAction *blink = [SKAction sequence:@[
        [SKAction fadeOutWithDuration:0.3],
        [SKAction fadeInWithDuration:0.3]
    ]];
    SKAction *repeatBlink = [SKAction repeatActionForever:blink];
    [self.qishi2Button runAction:repeatBlink];
}


- (void)outdrinkIrreclaimable
{
    SKTexture *backgroundTexture = [SKTexture textureWithImageNamed:[VilniusBallrollDlaUtils timberworkStaircase]];
    SKSpriteNode *background = [SKSpriteNode spriteNodeWithTexture:backgroundTexture size:self.view.frame.size];
    background.position = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame));
    background.zPosition = 0.0;
    [self addChild:background];
}

- (void)prophesyPremalignant
{
    SKLabelNode *titleLabel = [[SKLabelNode alloc] initWithFontNamed:@"newTT.ttf"];
    titleLabel.text = @"选择英雄出征";
    titleLabel.fontSize = 30.0f;
    titleLabel.fontColor = [SKColor yellowColor];
    titleLabel.horizontalAlignmentMode = SKLabelHorizontalAlignmentModeCenter;
    titleLabel.position = CGPointMake(CGRectGetMidX(self.view.frame), self.frame.size.height - 170.0f);
    [self addChild:titleLabel];
    
    
    SKSpriteNode *show=[SKSpriteNode spriteNodeWithImageNamed:@"touchapp"];
    show.size = CGSizeMake(80, 60);
    show.position = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame));
    [show setPosition:CGPointMake(CGRectGetMidX(self.view.frame) - 70.0f,CGRectGetMidY(self.view.frame) - 110.0f)];
    show.zPosition=self.qishi1.zPosition+1;
    [self addChild:show];
    
    SKSpriteNode *show2=[SKSpriteNode spriteNodeWithImageNamed:@"touchapp"];
    show2.size = CGSizeMake(80, 60);
    [show2 setPosition:CGPointMake(CGRectGetMidX(self.view.frame) + 70.0f,CGRectGetMidY(self.view.frame) - 110.0f)];
    show2.zPosition=self.qishi2Button.zPosition+1;
    [self addChild:show2];
    
    _btnRelogin = [[SKLabelNode alloc] initWithFontNamed:@"newTT.ttf"];
    _btnRelogin.text =@"切换账号";
    _btnRelogin.fontSize = 15.0f;
    _btnRelogin.fontColor = [SKColor yellowColor];
    
    _btnRelogin.horizontalAlignmentMode = SKLabelHorizontalAlignmentModeCenter;
    _btnRelogin.position = CGPointMake(CGRectGetMaxX(self.view.frame)-50, CGRectGetMaxY(self.view.frame)-70);
    [self addChild:_btnRelogin];
    
    
    
    
    
    
}

@end
