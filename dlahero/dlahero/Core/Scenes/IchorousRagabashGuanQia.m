







#import "IchorousRagabashGuanQia.h"
#import "CrapulousRoachbackGameScene.h"
#import "IsopterousBeatitudeGameScene.h"

@implementation IchorousRagabashGuanQia
- (void)didMoveToView:(SKView *)view
{
    [super didMoveToView:view];
    
    CGSize screenSize = self.size;

    
    CGRect backgroundRect = CGRectMake(0, 0, screenSize.width, screenSize.height);

    
    SKShapeNode *background = [SKShapeNode shapeNodeWithRect:backgroundRect];

    
    background.fillColor = [SKColor colorWithRed:34 green:62 blue:43 alpha:1.0];

    
    [self addChild:background];

    
    SKSpriteNode *button1 = [SKSpriteNode spriteNodeWithImageNamed:@"button1_image_name"];
    SKSpriteNode *button2 = [SKSpriteNode spriteNodeWithImageNamed:@"button2_image_name"];
    SKSpriteNode *button3 = [SKSpriteNode spriteNodeWithImageNamed:@"button3_image_name"];

    
    button1.name = @"button1";
    button2.name = @"button2";
    button3.name = @"button3";

    
    CGFloat screenHeight = self.size.height;
    CGFloat buttonHeight = button1.size.height;
    CGFloat spacing = 20.0; 

    
    button1.position = CGPointMake(self.size.width * 0.5, screenHeight * 0.5 + buttonHeight + spacing);
    button2.position = CGPointMake(self.size.width * 0.5, screenHeight * 0.5);
    button3.position = CGPointMake(self.size.width * 0.5, screenHeight * 0.5 - buttonHeight - spacing);

    
    [self addChild:button1];
    [self addChild:button2];
    [self addChild:button3];




}
#pragma mark - UIResponder overriden API

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{












    
    UITouch *touch = [touches anyObject];
        CGPoint location = [touch locationInNode:self];
        SKNode *touchedNode = [self nodeAtPoint:location];

        
        if ([touchedNode.name isEqualToString:@"button1"]) {
            
            NSLog(@"红圈1被点击");
        } else if ([touchedNode.name isEqualToString:@"button2"]) {
            
            NSLog(@"红圈2被点击");
        } else if ([touchedNode.name isEqualToString:@"button3"]) {
            
            NSLog(@"红圈3被点击");
        }
}
@end
