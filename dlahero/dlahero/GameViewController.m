//
//  GameViewController.m
//  dlahero
//
//  Created by 柚子茶 on 2023/3/17.
//

#import "GameViewController.h"
#import "GameScene.h"
#import "PsychicsAciniformMenuScene.h"


@interface GameViewController ()

@property (nonatomic, strong) SKView *skView;
@property (nonatomic, strong) UIImageView *backgroundImageView;
@property (nonatomic, strong) UITapGestureRecognizer *tapGesture;
@end
@implementation GameViewController
#pragma mark - Life cycle

- (void)loadView
{
    
    self.view = [[SKView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.skView = (SKView *)self.view;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
     // 创建并添加背景图
      self.backgroundImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"zhucheng"]];
    self.backgroundImageView.frame = self.view.bounds;
     [self.view addSubview:self.backgroundImageView];
     
     // 创建并添加点击手势
//    self.tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(loginButtonTapped)];
//     [self.view addGestureRecognizer: self.tapGesture];
    
    [ [AldGameSDK sharedGameSDK ]initSDK:self ];
      [AldGameSDK sharedGameSDK ].sdkDelegate = self;
   
    [ [AldGameSDK sharedGameSDK ] login];
    
}
- (void)loginButtonTapped
{
    // 调用登录方法
    [[AldGameSDK sharedGameSDK] login];
}
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

#pragma mark - 回调结果
- (void)onInitSuccess
{
    NSLog(@"\n***************初始化成功****************");
//@"初始化成功";
    [ [AldGameSDK sharedGameSDK ] login];
}
- (void)onInitFail:(NSError *)kerror
{
   }


- (void)onLoginSuccess:(AldUserData *)kuser
{
    self.backgroundImageView.hidden=YES;
    [self.view removeGestureRecognizer: self.tapGesture];
    // 将 SKView 显示出来，并将其添加为当前控制器视图的子视图
//        self.skView.hidden = NO;
//        [self.view addSubview:self.skView];
        
        SKScene *scene = [PsychicsAciniformMenuScene sceneWithSize:self.skView.bounds.size];
        [scene setScaleMode:SKSceneScaleModeAspectFill];
        
        [self.skView presentScene:scene];
   }


- (void)onLoginFail:(NSError *)kerror
{
}

- (void)onLogout
{
//    self.view = [[SKView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//    self.skView = (SKView *)self.view;
    // 创建并添加背景图
     self.backgroundImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"zhucheng"]];
   self.backgroundImageView.frame = self.view.bounds;
    [self.view addSubview:self.backgroundImageView];
   
    // 创建并添加点击手势
//   self.tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(loginButtonTapped)];
//    [self.view addGestureRecognizer: self.tapGesture];
    
    [[AldGameSDK sharedGameSDK] login];
}
- (void)onPaySuccess{
    
}

//头像选择回调图片
- (void)imageSelector:(UIImage *)image{
//    NSLog(@"imageSelector");
}



@end
