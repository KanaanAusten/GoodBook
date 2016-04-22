//
//  KitBagDateFrameModel.m
//  GoodBook
//
//  Created by KanaanAusten on 4/21/16.
//  Copyright © 2016 KanaanAusten. All rights reserved.
//

#import "GBKitBagDateFrameModel.h"

@implementation GBKitBagDateFrameModel

-(void)setKitbag:(GBKitBagDateModel *)kitbag{
    
    _kitbag = kitbag;
    
    //提取统一间距
    CGFloat margin = 20;
    
    //1.图片
    CGFloat pictureX = margin;
    CGFloat pictureY = margin;
    CGFloat pictureW = 90;
    CGFloat pictureH = 110;
    _pictureFrame = CGRectMake(pictureX, pictureY, pictureW, pictureH);
    
    //2.标题
    NSString *goodname = kitbag.goodname;
    CGFloat goodnameX = CGRectGetMaxX(_pictureFrame) + margin;
    CGFloat goodnameY = margin;
    CGSize goodnameSize = [self sizeWithText:goodname andMaxSize:CGSizeMake(screenWidth - 3 * margin - pictureW, MAXFLOAT) andFont:nameFont];
    CGFloat goodnameW = goodnameSize.width;
    CGFloat goodnameH = goodnameSize.height;
    _goodnameFrame = CGRectMake(goodnameX, goodnameY, goodnameW, goodnameH);
    
    
    //3.正文
    NSString *introduce = kitbag.introduce;
    CGFloat introduceX = CGRectGetMaxX(_pictureFrame) + margin;
    CGFloat introduceY = CGRectGetMaxY(_goodnameFrame) + margin;
    CGSize introduceSize = [self sizeWithText:introduce andMaxSize:CGSizeMake(screenWidth - 3 * margin - pictureW, MAXFLOAT) andFont:textFont];
    CGFloat introduceW = introduceSize.width;
    CGFloat introduceH = introduceSize.height;
    _introduceFrame = CGRectMake(introduceX, introduceY, introduceW, introduceH);
    
    //4.标识
//    CGFloat 
    
    //5.收藏
    
    //6.添加购物车
    
    //7.行高
    CGFloat rowHeight = 0;
    rowHeight = CGRectGetMaxY(_introduceFrame) + margin;
    _rowHeight = rowHeight;
}

- (CGSize)sizeWithText:(NSString *)text andMaxSize:(CGSize)maxSize andFont:(UIFont *)font
{
    NSDictionary *attr = @{NSFontAttributeName : font};
    return [text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attr context:nil].size;
}

@end
