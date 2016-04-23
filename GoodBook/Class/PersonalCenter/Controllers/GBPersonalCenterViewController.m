//
//  GBPersonalCenterViewController.m
//  好书 - 买好书,就用好书
//
//  Created by KanaanAusten on 16/3/23.
//  Copyright © 2016年 KanaanAusten. All rights reserved.
//

#import "GBPersonalCenterViewController.h"
#import "GBPersonalCenterHeaderView.h"

@interface GBPersonalCenterViewController () <personalcenterHeaderViewDelegate>
@property (nonatomic,strong) GBPersonalCenterHeaderView *headerView;
@end

@implementation GBPersonalCenterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setUpHeaderView];
    self.headerView.collectionCount = 5;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)personalcenterHeaderView:(GBPersonalCenterHeaderView *)userView didClickGoodsButton:(UIButton *)goodsButton{
    
}

- (void)personalcenterHeaderView:(GBPersonalCenterHeaderView *)userView didClickFocusButton:(UIButton *)focusButton{
    
}

- (void)setUpHeaderView
{
    GBPersonalCenterHeaderView *backImageView = [[GBPersonalCenterHeaderView alloc] init];
    backImageView.frame = CGRectMake(0, 0, screenWidth, 0.8 * screenWidth);
    backImageView.image = [UIImage imageNamed:@"usercenter-blackback"];
    self.headerView = backImageView;
    self.headerView.delegate = self;
    self.tableView.tableHeaderView = self.headerView;
}

@end
