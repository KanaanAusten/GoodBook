//
//  GBHomePageController.m
//  GoodBook
//
//  Created by KanaanAusten on 4/12/16.
//  Copyright © 2016 KanaanAusten. All rights reserved.
//

#import "GBHomePageController.h"
#import "GBKitBagViewController.h"
#import "GBShoppingBagViewController.h"
#import "GBPersonalCenterViewController.h"
#import "GBNavigationController.h"

@interface GBHomePageController ()

@end

@implementation GBHomePageController

+(void)initialize{
    UITabBarItem *item = [UITabBarItem appearanceWhenContainedIn:self, nil];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setObject:[UIColor skyBlueColor] forKey:NSForegroundColorAttributeName];
    [item setTitleTextAttributes:dict forState:UIControlStateSelected];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setUpAllChildViewController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setUpAllChildViewController{
    GBKitBagViewController *kitBag = [[GBKitBagViewController alloc]init];
    [self setUpOneChildViewController:kitBag title:@"锦囊袋" imageName:@"KitBag" selectedImageName:@"KitBag" badgeValue:@"10"];
    GBShoppingBagViewController *shoppingBag = [[GBShoppingBagViewController alloc]init];
    [self setUpOneChildViewController:shoppingBag title:@"购物袋" imageName:@"ShoppingBag" selectedImageName:@"ShoppingBag" badgeValue:@"10"];
    GBPersonalCenterViewController *personalCenter = [[GBPersonalCenterViewController alloc]init];
    [self setUpOneChildViewController:personalCenter title:@"个人中心" imageName:@"PersonalCenter" selectedImageName:@"PersonalCenter" badgeValue:@"10"];
}

-(void)setUpOneChildViewController:(UIViewController *)viewController title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName badgeValue:(NSString *)badgeValue{
    
    //    viewController.tabBarItem.title = title;
    //    viewController.navigationItem.title = title;
    viewController.title = title;
    
    viewController.tabBarItem.image = [UIImage imageNamed:imageName];
    viewController.tabBarItem.selectedImage = [UIImage imageWithOriginaName:selectedImageName];
    viewController.tabBarItem.badgeValue = badgeValue;
    
    GBNavigationController *nav = [[GBNavigationController alloc] initWithRootViewController:viewController];
    
    [self addChildViewController:nav];
    
}

@end
