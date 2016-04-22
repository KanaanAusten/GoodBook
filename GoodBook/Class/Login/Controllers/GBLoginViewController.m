//
//  GBLoginViewController.m
//  好书
//
//  Created by KanaanAusten on 16/3/24.
//  Copyright © 2016年 KanaanAusten. All rights reserved.
//

#import "GBLoginViewController.h"

#define screenW [UIScreen mainScreen].bounds.size.width
#define screevH [UIScreen mainScreen].bounds.size.height

@interface GBLoginViewController () <UITextFieldDelegate>

@property (nonatomic,strong) UIImageView *backgroundImage;

@end

@implementation GBLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setBackgroundImage];//设置背景图
    [self setLogoImage];//设置 logo
    [self setTextField];//设置 文本框
    [self setButton];//设置按钮
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - 设置背景图
-(void)setBackgroundImage{
    _backgroundImage = [[UIImageView alloc]init];
    _backgroundImage.frame = [UIScreen mainScreen].bounds;
    _backgroundImage.image = [UIImage imageNamed:@"bg_login"];
    [self.view addSubview:_backgroundImage];
}

#pragma mark - 设置 logo
-(void)setLogoImage{
    
}

#pragma mark - 设置文本框
-(void)setTextField{
    /**
     用户名输入框
     */
    UITextField *userNameTF = [[UITextField alloc]init];
    [self initWithTextField:userNameTF height:200 uiTextBorderStyle:UITextBorderStyleRoundedRect placeholder:@"请输入你的用户名" alpha:0.5];
    /**
     密码输入框
     */
    UITextField *passCodeTF = [[UITextField alloc]init];
    [self initWithTextField:passCodeTF height:270 uiTextBorderStyle:UITextBorderStyleRoundedRect placeholder:@"请输入你的密码" alpha:0.5];
}

-(void)initWithTextField :(UITextField *) uiTextField height :(CGFloat)height uiTextBorderStyle :(UITextBorderStyle) uiTextBorderStyle placeholder :(NSString *) placeholder alpha :(CGFloat) alpha {
    
    uiTextField = [[UITextField alloc]init];
    uiTextField.frame = CGRectMake(50, height, screenW - 50 * 2, 50);
    uiTextField.delegate = self;
    uiTextField.borderStyle = uiTextBorderStyle ;
    uiTextField.placeholder = placeholder;
    uiTextField.alpha = alpha;
    [self.view addSubview:uiTextField];
}

#pragma mark - 设置按钮
-(void)setButton{
    UIButton *registerBtn = [[UIButton alloc]init];
    registerBtn.frame = CGRectMake( 50, 350, (screenW - 110) / 2, 50);
    registerBtn.backgroundColor = [UIColor skyBlueColor];
    registerBtn.layer.cornerRadius = 10;
    [registerBtn setTitle:@"注册" forState:UIControlStateNormal];
    [self.view addSubview:registerBtn];
    UIButton *loginBtn = [[UIButton alloc]init];
    loginBtn.frame = CGRectMake(50 + (screenW - 110) / 2 + 10, 350, (screenW - 110) / 2, 50);
    loginBtn.backgroundColor = [UIColor skyBlueColor];
    loginBtn.layer.cornerRadius = 10;
    [loginBtn setTitle:@"登陆" forState:UIControlStateNormal];
    [self.view addSubview:loginBtn];
}

@end
