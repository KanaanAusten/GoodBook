//
//  UIBarButtonItem+GBBarButtonItem.m
//  GoodBook
//
//  Created by KanaanAusten on 4/15/16.
//  Copyright © 2016 KanaanAusten. All rights reserved.
//

#import "UIBarButtonItem+GBBarButtonItem.h"

@implementation UIBarButtonItem (GBBarButtonItem)

+(UIBarButtonItem *)itemWithTarget : (id) target action : (SEL) action image : (NSString *) imageName highlightImage : (NSString *) highlightImageName{
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:highlightImageName] forState:UIControlStateHighlighted];
    btn.size = btn.currentBackgroundImage.size;
    return [[UIBarButtonItem alloc]initWithCustomView:btn];
}

@end
