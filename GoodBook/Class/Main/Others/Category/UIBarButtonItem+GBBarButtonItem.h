//
//  UIBarButtonItem+GBBarButtonItem.h
//  GoodBook
//
//  Created by KanaanAusten on 4/15/16.
//  Copyright © 2016 KanaanAusten. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (GBBarButtonItem)

+(UIBarButtonItem *)itemWithTarget : (id) target action : (SEL) action image : (NSString *) imageName highlightImage : (NSString *) highlightImageName;

@end
