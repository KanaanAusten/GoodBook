//
//  GBKitBagCell.h
//  GoodBook
//
//  Created by KanaanAusten on 4/21/16.
//  Copyright © 2016 KanaanAusten. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GBKitBagDateModel.h"
#import "GBKitBagDateFrameModel.h"

@interface GBKitBagCell : UITableViewCell

@property (nonatomic,strong) GBKitBagDateFrameModel *kitbagDataFrame;

+(instancetype)kitbagCellWithTableView:(UITableView *)tableView;

@end
