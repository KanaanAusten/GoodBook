//
//  UIImage+GBImage.m
//  GoodBook
//
//  Created by KanaanAusten on 4/15/16.
//  Copyright © 2016 KanaanAusten. All rights reserved.
//

#import "UIImage+GBImage.h"

@implementation UIImage (GBImage)

+(instancetype)imageWithOriginaName:(NSString *)imageName{
    UIImage *image = [UIImage imageNamed:imageName];
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

@end
