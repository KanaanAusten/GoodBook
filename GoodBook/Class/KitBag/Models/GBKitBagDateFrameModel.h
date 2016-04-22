//
//  KitBagDateFrameModel.h
//  GoodBook
//
//  Created by KanaanAusten on 4/21/16.
//  Copyright © 2016 KanaanAusten. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GBKitBagDateModel.h"
#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>

@interface GBKitBagDateFrameModel : NSObject

@property (nonatomic,strong) GBKitBagDateModel *kitbag;

@property (nonatomic,assign,readonly) CGRect goodnameFrame;
@property (nonatomic,assign,readonly) CGRect introduceFrame;
@property (nonatomic,assign,readonly) CGRect pictureFrame;
@property (nonatomic,assign,readonly) CGRect privateFrame;
@property (nonatomic,assign,readonly) CGRect collectFrame;
@property (nonatomic,assign,readonly) CGRect shoppingbagFrame;

@property (nonatomic,assign,readonly) CGFloat rowHeight;

@end
