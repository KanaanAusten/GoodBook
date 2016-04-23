//
//  GBPersonalCenterHeaderView.m
//  GoodBook
//
//  Created by KanaanAusten on 4/22/16.
//  Copyright © 2016 KanaanAusten. All rights reserved.
//

#import "GBPersonalCenterHeaderView.h"

@interface GBPersonalCenterHeaderView ()

@property (nonatomic, weak) UIImageView *iconImageview;

@property (nonatomic, weak) UIView *containView;

@property (nonatomic, strong) UIButton *leftBtn;

@property (nonatomic, strong) UIButton *rightBtn;

@property (nonatomic, strong) UIView *line;

@property (nonatomic, strong) UIView *margin;

@end

@implementation GBPersonalCenterHeaderView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        self.userInteractionEnabled = YES;
        UIImageView *iconImageview = [[UIImageView alloc] init];
        iconImageview.width = 80;
        iconImageview.height = iconImageview.width;
        iconImageview.x = (screenWidth - iconImageview.width) * 0.5;
        iconImageview.layer.cornerRadius = 40;
        iconImageview.clipsToBounds = YES;
        iconImageview.image = [UIImage imageNamed:@"holder-item"];
        [self addSubview:iconImageview];
        self.iconImageview = iconImageview;
        
        UIView *containview = [[UIView alloc] init];
        containview.userInteractionEnabled = YES;
        containview.backgroundColor = [UIColor greenColor];
        [self addSubview:containview];
        self.containView = containview;
        
        self.leftBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.leftBtn.titleLabel.numberOfLines = 2;
        self.leftBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
        [self.leftBtn setBackgroundColor:[UIColor whiteColor]];
        self.leftBtn.titleLabel.font = textFont;
        [self.leftBtn addTarget:self action:@selector(Goodsbtnclikc:) forControlEvents:UIControlEventTouchUpInside];
        [self.leftBtn setTitle:@"0\n我的商品" forState:UIControlStateNormal];
        [self.leftBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.containView addSubview:self.leftBtn];
        
        self.rightBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.rightBtn.titleLabel.numberOfLines = 2;
        self.rightBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
        [self.rightBtn setBackgroundColor:[UIColor whiteColor]];
        self.rightBtn.titleLabel.font = textFont;
        [self.rightBtn addTarget:self action:@selector(Focusbtnclikc:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.rightBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.containView addSubview:self.rightBtn];
        
        UIView *line = [[UIView alloc]init];
        line.backgroundColor = [UIColor lightGrayColor];
        [self.containView addSubview:line];
        self.line = line;
        
    }
    
    return self;
}
- (void)setCollectionCount:(NSUInteger)collectionCount
{
    _collectionCount = collectionCount;
    
    
    [self.rightBtn setTitle:[NSString stringWithFormat:@"%ld\n我的关注",_collectionCount]forState:UIControlStateNormal];
}

- (void)setGoodsNum:(int)goodsNum
{
    _goodsNum = goodsNum;
    
    [self.leftBtn setTitle:[NSString stringWithFormat:@"%d\n我的商品",goodsNum] forState:UIControlStateNormal];
}
- (void)layoutSubviews
{
    self.iconImageview.centerY = self.height * 0.4;
    
    self.containView.frame = CGRectMake(0, self.height * 0.8, screenWidth, self.height*0.2);
    
    self.leftBtn.frame = CGRectMake(0, 0, screenWidth/2, self.height*0.2);
    
    self.rightBtn.frame = CGRectMake(screenWidth/2, 0, screenWidth/2, self.height*0.2);
    
    self.line.centerX = screenWidth / 2;
    self.line.centerY = self.containView.height / 2;
    self.line.width = 1;
    self.line.height = self.containView.height - 10;
    
    // self.margin.frame = CGRectMake(0, self.height*0.9, screenW, self.height * 0.1);
}

- (void)Goodsbtnclikc:(UIButton *)button
{
    if ([self.delegate respondsToSelector:@selector(personalcenterHeaderView:didClickGoodsButton:)]) {
        [self.delegate personalcenterHeaderView:self didClickGoodsButton:button];
    }
}

- (void)Focusbtnclikc:(UIButton *)button
{
    if ([self.delegate respondsToSelector:@selector(personalcenterHeaderView:didClickFocusButton:)]) {
        [self.delegate personalcenterHeaderView:self didClickFocusButton:button];
    }
}

@end
