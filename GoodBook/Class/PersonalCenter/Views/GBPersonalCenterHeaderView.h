//
//  GBPersonalCenterHeaderView.h
//  GoodBook
//
//  Created by KanaanAusten on 4/22/16.
//  Copyright © 2016 KanaanAusten. All rights reserved.
//

#import <UIKit/UIKit.h>
@class GBPersonalCenterHeaderView;

@protocol personalcenterHeaderViewDelegate <NSObject>

@optional

- (void)personalcenterHeaderView:(GBPersonalCenterHeaderView *)userView didClickGoodsButton:(UIButton *)goodsButton;

- (void)personalcenterHeaderView:(GBPersonalCenterHeaderView *)userView didClickFocusButton:(UIButton *)focusButton;

@end

@interface GBPersonalCenterHeaderView : UIImageView

@property (nonatomic, assign) NSUInteger collectionCount;

@property (nonatomic, assign) int goodsNum;

@property (nonatomic, assign) id<personalcenterHeaderViewDelegate> delegate;

@end
