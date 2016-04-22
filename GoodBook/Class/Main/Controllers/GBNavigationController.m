//
//  GBNavigationController.m
//  GoodBook
//
//  Created by KanaanAusten on 4/15/16.
//  Copyright © 2016 KanaanAusten. All rights reserved.
//

#import "GBNavigationController.h"

@interface GBNavigationController ()

@end

@implementation GBNavigationController

+(void)initialize{
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = [UIColor orangeColor];
    textAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    [item setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    
    NSMutableDictionary *disableTextAttrs = [NSMutableDictionary dictionary];
    disableTextAttrs[NSForegroundColorAttributeName] = [UIColor colorWithHue:0.6 saturation:0.6 brightness:0.6 alpha:0.4];
    disableTextAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    [item setTitleTextAttributes:disableTextAttrs forState:UIControlStateDisabled];
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.viewControllers.count > 0) {
        
        viewController.hidesBottomBarWhenPushed = YES;
        
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(back) image:@"navigationbar_back" highlightImage:@"navigationbar_back_highlighted"];
        
        viewController.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(more) image:@"navigationbar_more" highlightImage:@"navigationbar_more_highlighted"];
    }
    
    [super pushViewController:viewController animated:YES];
}

-(void)back{
    [self popViewControllerAnimated:YES];
}

-(void)more{
    [self popToRootViewControllerAnimated:YES];
}

@end
